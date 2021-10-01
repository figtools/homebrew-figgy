class FiggyAT0054 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.54/darwin/figgy.tar.gz"
  sha256 "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead"
    sha256 mojave:      "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead"
    sha256 high_sierra: "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
