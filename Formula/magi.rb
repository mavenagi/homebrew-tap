require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.18.1/magi-1.18.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "c1efffe006442f4cc7933aaaab216809648954baf404e291ea4b0a69c57cf09f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
