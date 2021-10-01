class FiggyAT120 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.2.0/darwin/figgy.tar.gz"
  sha256 "3687156c031e084a4967dc3b0098fb9945fe2e18423a56c468560c86d9d17d57"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "3687156c031e084a4967dc3b0098fb9945fe2e18423a56c468560c86d9d17d57"
    sha256 mojave:   "3687156c031e084a4967dc3b0098fb9945fe2e18423a56c468560c86d9d17d57"
    sha256 big_sur:  "3687156c031e084a4967dc3b0098fb9945fe2e18423a56c468560c86d9d17d57"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
