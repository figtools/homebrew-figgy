class FiggyAT0058 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.58/darwin/figgy.tar.gz"
  sha256 "330f3a5844bc0f487cb65917ee0d59c1ac7916681dab10fa160a42342284acb2"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "330f3a5844bc0f487cb65917ee0d59c1ac7916681dab10fa160a42342284acb2"
    sha256 mojave:      "330f3a5844bc0f487cb65917ee0d59c1ac7916681dab10fa160a42342284acb2"
    sha256 high_sierra: "330f3a5844bc0f487cb65917ee0d59c1ac7916681dab10fa160a42342284acb2"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
