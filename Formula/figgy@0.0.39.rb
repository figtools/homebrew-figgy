class FiggyAT0039 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.39/darwin/figgy.tar.gz"
  sha256 "c8cf7e2f423550cf905cc4438ea95d3451085687fe223561904fcb362ca99d49"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "c8cf7e2f423550cf905cc4438ea95d3451085687fe223561904fcb362ca99d49"
    sha256 mojave:      "c8cf7e2f423550cf905cc4438ea95d3451085687fe223561904fcb362ca99d49"
    sha256 high_sierra: "c8cf7e2f423550cf905cc4438ea95d3451085687fe223561904fcb362ca99d49"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
