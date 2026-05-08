require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.0.1/magi-1.0.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "b8f922461556dd2f532a1a7863acbb4ca8393061365b8d4eb52e4b359e63f5a2"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
