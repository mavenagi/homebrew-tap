require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.17.1/magi-0.17.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "36c83a23430391e6c557eec5f24a9dd27a0681e7d521073b6ecced980f9fb3a5"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
