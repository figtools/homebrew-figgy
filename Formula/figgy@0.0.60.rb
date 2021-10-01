class FiggyAT0060 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.60/darwin/figgy.tar.gz"
  sha256 "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733"
    sha256 mojave:      "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733"
    sha256 high_sierra: "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
