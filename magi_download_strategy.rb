require "download_strategy"

class MagiDownloadStrategy < CurlDownloadStrategy
  require "utils/github"

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
    args = ["--header", "Authorization: token #{@github_token}", "--header", "Accept: application/octet-stream"]
    args
  end

  def set_github_token
   @github_token = ENV["MAGI_GH_ACCESS_TOKEN"]
   unless @github_token
     raise CurlDownloadStrategyError, "Environment variable MAGI_GH_ACCESS_TOKEN is required."
   end
   validate_github_repository_access!
 end

 def validate_github_repository_access!
   GitHub.repository(@owner, @repo)
 rescue GitHub::HTTPNotFoundError
   # We only handle HTTPNotFoundError here,
   # because AuthenticationFailedError is handled within util/github.
   message = <<~EOS
     MAGI_GH_ACCESS_TOKEN can not access the repository: #{@owner}/#{@repo}
     This token may not have permission to access the repository or the url of formula may be incorrect.
   EOS
   raise CurlDownloadStrategyError, message
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
    release_url = "https://api.github.com/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}"
    GitHub::API.open_rest(release_url)
  end
end
