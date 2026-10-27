require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.10.0/magi-2.10.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "e1269d9372026ce439c5b8994965c266dda7092c3c4aa7a13ae5eaee3ef839ac"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
