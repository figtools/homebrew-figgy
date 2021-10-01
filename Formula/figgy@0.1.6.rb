class FiggyAT016 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.1.6/darwin/figgy.tar.gz"
  sha256 "ce2403bd147aab7748a31226ecd63e30b5b5bee9c0ab07195685c5c04eb99543"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "ce2403bd147aab7748a31226ecd63e30b5b5bee9c0ab07195685c5c04eb99543"
    sha256 mojave:      "ce2403bd147aab7748a31226ecd63e30b5b5bee9c0ab07195685c5c04eb99543"
    sha256 high_sierra: "ce2403bd147aab7748a31226ecd63e30b5b5bee9c0ab07195685c5c04eb99543"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
