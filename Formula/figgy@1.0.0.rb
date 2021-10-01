class FiggyAT100 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.0.0/darwin/figgy.tar.gz"
  sha256 "14ff5a3f83217132c7e9f64dea04025deb0fe311af554858b3537ea1c5012b84"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "14ff5a3f83217132c7e9f64dea04025deb0fe311af554858b3537ea1c5012b84"
    sha256 mojave:   "14ff5a3f83217132c7e9f64dea04025deb0fe311af554858b3537ea1c5012b84"
    sha256 big_sur:  "14ff5a3f83217132c7e9f64dea04025deb0fe311af554858b3537ea1c5012b84"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
