require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.1.0/magi-2.1.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "920987e0645df3b6125f36f053b077db4e9e55fc8a1fc2c2fc8a4ec015ff5a8d"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
