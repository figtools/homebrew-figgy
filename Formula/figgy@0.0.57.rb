class FiggyAT0057 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.57/darwin/figgy.tar.gz"
  sha256 "b6955b5516c04fc209fcd4355109cd384a08189f851a00b11d7c0b48e118d168"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "b6955b5516c04fc209fcd4355109cd384a08189f851a00b11d7c0b48e118d168"
    sha256 mojave:      "b6955b5516c04fc209fcd4355109cd384a08189f851a00b11d7c0b48e118d168"
    sha256 high_sierra: "b6955b5516c04fc209fcd4355109cd384a08189f851a00b11d7c0b48e118d168"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
