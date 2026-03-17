require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.13.0/magi-0.13.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "78d15ff13429e808204ae7d2c90efffd14d3a80ce29d5393b9c9b35d6d170b9f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
