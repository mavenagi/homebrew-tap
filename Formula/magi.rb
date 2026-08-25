require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.0.1/magi-2.0.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "ef3abd8c62fe0cf891c2db7a8db264154711c2e08b13a521a81dddacded7d542"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
