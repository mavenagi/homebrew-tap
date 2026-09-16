require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.3.1/magi-2.3.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "5a93929aca5bf6a0b73247efa858bada68717c357300d631838a289fd0f49f03"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
