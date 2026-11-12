require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.10.3/magi-2.10.3-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4c8946e3a7d7225547f209f63dbbb162bea77cd49699b5f37fa4e3695f19d7e2"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
