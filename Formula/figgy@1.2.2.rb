class FiggyAT122 < Formula
  desc "This is the CLI that accompanies the 'figgy' configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.2.2/darwin/figgy.tar.gz"
  sha256 "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b"
    sha256 mojave:   "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b"
    sha256 big_sur:  "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b"
  end

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
