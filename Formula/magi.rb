require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.9.1/magi-1.9.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "8181f6556e596553cbf92a775c9124d2f0e585fe2adf3308bfa2575bccae9c10"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
