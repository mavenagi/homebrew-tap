require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.22.2/magi-1.22.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "13169390883c9dbe7ef65a7589c014faa18e32604cf8093cba8d432c1a4152b8"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
