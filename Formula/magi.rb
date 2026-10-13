require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.8.0/magi-2.8.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "411f5dda3cfd389bec92cd81088e5feb825f7d78f0d355fc90719aa7512ea909"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
