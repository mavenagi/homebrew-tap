require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.22.0/magi-1.22.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "170250c4c79bd9ba5aa5ff1d84251394b93fdaf60c38bec60f2eae5c8de02d4f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
