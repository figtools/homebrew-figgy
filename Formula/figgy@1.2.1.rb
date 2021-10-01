class FiggyAT121 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.2.1/darwin/figgy.tar.gz"
  sha256 "0f80c73a5912f9dc0fb4ec95e2d0a6a74756b28e6b918888c703e359b9f7f838"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "0f80c73a5912f9dc0fb4ec95e2d0a6a74756b28e6b918888c703e359b9f7f838"
    sha256 mojave:   "0f80c73a5912f9dc0fb4ec95e2d0a6a74756b28e6b918888c703e359b9f7f838"
    sha256 big_sur:  "0f80c73a5912f9dc0fb4ec95e2d0a6a74756b28e6b918888c703e359b9f7f838"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
