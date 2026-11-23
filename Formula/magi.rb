require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.13.0/magi-2.13.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "0d47a4c64f237465123fcded8cccfc1e5295465d2b64ea9263ba4a4700188a0d"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
