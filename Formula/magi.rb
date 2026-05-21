require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.5.0/magi-1.5.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "7dadb855fe4905af99d4e06c181b18c161270ea9b9962e386564907961e90898"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
