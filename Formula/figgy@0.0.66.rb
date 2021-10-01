class FiggyAT0066 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.66/darwin/figgy.tar.gz"
  sha256 "ceefccc79cb0b817ae2385d6c6f37b58b390446c1a9a478b428f59df5d85531a"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "ceefccc79cb0b817ae2385d6c6f37b58b390446c1a9a478b428f59df5d85531a"
    sha256 mojave:      "ceefccc79cb0b817ae2385d6c6f37b58b390446c1a9a478b428f59df5d85531a"
    sha256 high_sierra: "ceefccc79cb0b817ae2385d6c6f37b58b390446c1a9a478b428f59df5d85531a"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
