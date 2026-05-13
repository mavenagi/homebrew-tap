require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.4.0/magi-1.4.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "dd379c42195ae062b5426d16e6468ec85819136c8d062b6acd40080b6cbfab7e"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
