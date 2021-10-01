class FiggyAT0048 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.48/darwin/figgy.tar.gz"
  sha256 "e7606ef3c2ad57a6bfdce883c0acecdb0e0345f74fd0b7fd4d866cc2c68c96a0"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "e7606ef3c2ad57a6bfdce883c0acecdb0e0345f74fd0b7fd4d866cc2c68c96a0"
    sha256 mojave:      "e7606ef3c2ad57a6bfdce883c0acecdb0e0345f74fd0b7fd4d866cc2c68c96a0"
    sha256 high_sierra: "e7606ef3c2ad57a6bfdce883c0acecdb0e0345f74fd0b7fd4d866cc2c68c96a0"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
