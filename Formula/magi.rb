require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.16.0/magi-0.16.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "f8be908a95d52c6f5be9d939fd63ba6119d71eda7a0455531d50dc5632198a3e"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
