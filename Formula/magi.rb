require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mwflaher/magi/"
  url "https://github.com/mwflaher/magi/releases/download/0.1.0/magi-0.1.0.tar.gz" 
  sha256 "c0cb07d4920ef17d7e6b7d072d2d01683f96496bcfc2cedfe9d4604cfbf92628"
  
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end