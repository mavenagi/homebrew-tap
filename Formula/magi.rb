require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/0.1.0/magi-0.1.0.tar.gz" 
  sha256 "6b2eab8b138d8bb2046cdf64aa5dd8d77b62f13cf66190189ba02bb5dc8f3236"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end