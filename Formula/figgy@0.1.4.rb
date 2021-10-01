class FiggyAT014 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.1.4/darwin/figgy.tar.gz"
  sha256 "a14808bbeba71abb3d6e20b9cfacdb1f3cd3daa935e4897dc6ce5bb0c65a65d4"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "a14808bbeba71abb3d6e20b9cfacdb1f3cd3daa935e4897dc6ce5bb0c65a65d4"
    sha256 mojave:      "a14808bbeba71abb3d6e20b9cfacdb1f3cd3daa935e4897dc6ce5bb0c65a65d4"
    sha256 high_sierra: "a14808bbeba71abb3d6e20b9cfacdb1f3cd3daa935e4897dc6ce5bb0c65a65d4"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
