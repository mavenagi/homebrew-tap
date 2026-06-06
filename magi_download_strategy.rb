require "download_strategy"
require "net/http"
require "json"

class MagiDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
    parse_url_pattern
    set_github_token
  end

  def parse_url_pattern
    url_pattern = %r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)}
    unless @url =~ url_pattern
      raise CurlDownloadStrategyError, "Invalid url pattern for GitHub Release."
    end

    _, @owner, @repo, @tag, @filename = *@url.match(url_pattern)
  end

  def download_url
    "https://api.github.com/repos/#{@owner}/#{@repo}/releases/assets/#{asset_id}"
  end

  def resolve_url_basename_time_file_size(url, timeout: nil)
    url = download_url
    super
  end

  private

  def _curl_args
    ["--header", "Authorization: token #{@github_token}", "--header", "Accept: application/octet-stream"]
  end

  def set_github_token
    @github_token = ENV["HOMEBREW_GITHUB_ACCESS_TOKEN"]
    return if @github_token

    raise CurlDownloadStrategyError, "Environment variable HOMEBREW_GITHUB_ACCESS_TOKEN is required."
  end

  def asset_id
    @asset_id ||= resolve_asset_id
  end

  def resolve_asset_id
    release_metadata = fetch_release_metadata
    assets = release_metadata["assets"].select { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "Asset file not found." if assets.empty?

    assets.first["id"]
  end

  def fetch_release_metadata
    uri = URI("https://api.github.com/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}")
    req = Net::HTTP::Get.new(uri)
    req["Authorization"] = "token #{@github_token}"
    req["Accept"] = "application/vnd.github+json"
    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(req) }

    case res
    when Net::HTTPSuccess
      JSON.parse(res.body)
    when Net::HTTPNotFound
      raise CurlDownloadStrategyError, <<~EOS
        Release not found: #{@owner}/#{@repo}@#{@tag}
        Check that HOMEBREW_GITHUB_ACCESS_TOKEN has access to the repository and the release exists.
      EOS
    else
      raise CurlDownloadStrategyError, "GitHub API #{res.code} #{res.message} fetching #{uri}"
    end
  end
end
