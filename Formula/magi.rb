require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.0.3/magi-2.0.3-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "330af2ca8770ac0ea93572d11852e7231d6d64c54a8df3d87cbfa683c1774ce3"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
