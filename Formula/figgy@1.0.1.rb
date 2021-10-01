class FiggyAT101 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.0.1/darwin/figgy.tar.gz"
  sha256 "44c03ce0af2a1521e1662a7e1ea76db2968ca5bb9b6924a3960c235d1856c5e1"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "44c03ce0af2a1521e1662a7e1ea76db2968ca5bb9b6924a3960c235d1856c5e1"
    sha256 mojave:   "44c03ce0af2a1521e1662a7e1ea76db2968ca5bb9b6924a3960c235d1856c5e1"
    sha256 big_sur:  "44c03ce0af2a1521e1662a7e1ea76db2968ca5bb9b6924a3960c235d1856c5e1"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
