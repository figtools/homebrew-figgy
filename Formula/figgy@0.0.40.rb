class FiggyAT0040 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.40/darwin/figgy.tar.gz"
  sha256 "e22e25a1924e2f4fa88d5968617c2df61a66f653b7da4028b83c48e65773dca1"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "e22e25a1924e2f4fa88d5968617c2df61a66f653b7da4028b83c48e65773dca1"
    sha256 mojave:      "e22e25a1924e2f4fa88d5968617c2df61a66f653b7da4028b83c48e65773dca1"
    sha256 high_sierra: "e22e25a1924e2f4fa88d5968617c2df61a66f653b7da4028b83c48e65773dca1"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
