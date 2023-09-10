require "formula"
require_relative "../custom_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mwflaher/magi/"
  url "https://github.com/mwflaher/magi/releases/download/0.1.0/magi-0.1.0.tar.gz" 
  sha256 "25f9c59c2f8286bce39ade5ea7b60dcf6158470d"
  
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end