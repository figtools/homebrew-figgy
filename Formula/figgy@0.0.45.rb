class FiggyAT0045 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.45/darwin/figgy.tar.gz"
  sha256 "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773"
    sha256 mojave:      "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773"
    sha256 high_sierra: "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
