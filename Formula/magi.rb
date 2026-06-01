require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.6.1/magi-1.6.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "5ed76b842cc11a7f3a966a094f8d14779aacf57c97ba759ee90c26e94ede8943"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
