require "formula"
require_relative "../custom_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mwflaher/magi/"
  url "https://github.com/mwflaher/magi/releases/download/0.0.0/nice.png", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  # sha256 "52126be8cf1bddd7536886e74c053ad7d0ed2aa89b4b630f76785bac21695fcd"
  
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  
  test do
      system "#{bin}/wget --help"
  end
end