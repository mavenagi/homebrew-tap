require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.12.1/magi-2.12.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "13b49f67c756837a48ad289a5f855ea6727e5e1d82a587c7cd48ac4143f8a441"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
