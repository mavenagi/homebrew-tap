require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.9.0/magi-2.9.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "77e49a759b6fa029c948e375096debd8a3b70f1067a4b9848a5dd250a56f5375"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
