require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.7.1/magi-2.7.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "78ae3056b5e74e4f091646f2adb1fe96c01b49d8eb55bdd761b449249259a754"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
