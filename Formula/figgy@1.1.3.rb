class FiggyAT113 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.1.3/darwin/figgy.tar.gz"
  sha256 "154524088605f78d8f3cda831a8bc46962b179bb997278ed2cf1e813cacbf05e"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "154524088605f78d8f3cda831a8bc46962b179bb997278ed2cf1e813cacbf05e"
    sha256 mojave:   "154524088605f78d8f3cda831a8bc46962b179bb997278ed2cf1e813cacbf05e"
    sha256 big_sur:  "154524088605f78d8f3cda831a8bc46962b179bb997278ed2cf1e813cacbf05e"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
