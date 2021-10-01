class FiggyAT0063 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.63/darwin/figgy.tar.gz"
  sha256 "68e07534caae0a6eecfeb4544b51b121653993f7ba083191cc50f14d3cc9ef42"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "68e07534caae0a6eecfeb4544b51b121653993f7ba083191cc50f14d3cc9ef42"
    sha256 mojave:      "68e07534caae0a6eecfeb4544b51b121653993f7ba083191cc50f14d3cc9ef42"
    sha256 high_sierra: "68e07534caae0a6eecfeb4544b51b121653993f7ba083191cc50f14d3cc9ef42"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
