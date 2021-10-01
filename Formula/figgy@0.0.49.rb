class FiggyAT0049 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.49/darwin/figgy.tar.gz"
  sha256 "ac2db0a109454e275b68e774a9e1128ad656c94c848b5cca72cc3fdbe9cb494e"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "ac2db0a109454e275b68e774a9e1128ad656c94c848b5cca72cc3fdbe9cb494e"
    sha256 mojave:      "ac2db0a109454e275b68e774a9e1128ad656c94c848b5cca72cc3fdbe9cb494e"
    sha256 high_sierra: "ac2db0a109454e275b68e774a9e1128ad656c94c848b5cca72cc3fdbe9cb494e"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
