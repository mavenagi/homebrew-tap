require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.10.2/magi-2.10.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "bcd8147ba2b2be4e89c685a44d3e9bfed2389d42092b8f69785cb82a8c4eb60b"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
