require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.18.0/magi-1.18.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "88204f35d3525c75a261d42ed00bc4141f4256c0a9fd0c9350afdce756a66a41"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
