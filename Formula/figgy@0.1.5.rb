class FiggyAT015 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.1.5/darwin/figgy.tar.gz"
  sha256 "737f0c2aeca6c7c1d0c9d30fa14e16b45c580b2da256ee408b14ca66f0ca7c35"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "737f0c2aeca6c7c1d0c9d30fa14e16b45c580b2da256ee408b14ca66f0ca7c35"
    sha256 mojave:      "737f0c2aeca6c7c1d0c9d30fa14e16b45c580b2da256ee408b14ca66f0ca7c35"
    sha256 high_sierra: "737f0c2aeca6c7c1d0c9d30fa14e16b45c580b2da256ee408b14ca66f0ca7c35"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
