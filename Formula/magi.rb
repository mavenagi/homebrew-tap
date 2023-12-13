require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.12.0/magi-0.12.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "8553f87e0ce8053b7a12374b8c3d6fe9389c84f149992665a7750c842186f176"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
