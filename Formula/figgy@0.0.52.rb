class FiggyAT0052 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.52/darwin/figgy.tar.gz"
  sha256 "3b589d939c772891eb176af0848dc6ffb888f8c2c5d3fce8bbad39f317cb64f1"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "3b589d939c772891eb176af0848dc6ffb888f8c2c5d3fce8bbad39f317cb64f1"
    sha256 mojave:      "3b589d939c772891eb176af0848dc6ffb888f8c2c5d3fce8bbad39f317cb64f1"
    sha256 high_sierra: "3b589d939c772891eb176af0848dc6ffb888f8c2c5d3fce8bbad39f317cb64f1"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
