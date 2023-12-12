require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.11.2/magi-0.11.2.tar.gz", :using => MagiDownloadStrategy
  sha256 "a11ec10ced49f9009aad99c360d6e5cd4f119d16008341056e623540c914b9ea"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
