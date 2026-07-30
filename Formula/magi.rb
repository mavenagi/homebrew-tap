require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.16.0/magi-1.16.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "51c0d529a83c03e1275af3589dec968ce28d70cd85256a1112d4864a895fde0f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
