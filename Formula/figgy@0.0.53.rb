class FiggyAT0053 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.53/darwin/figgy.tar.gz"
  sha256 "d6fc2519f625d5ee83ad684629a7b7919ed5f0846b26958bef7aea46e359a071"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "d6fc2519f625d5ee83ad684629a7b7919ed5f0846b26958bef7aea46e359a071"
    sha256 mojave:      "d6fc2519f625d5ee83ad684629a7b7919ed5f0846b26958bef7aea46e359a071"
    sha256 high_sierra: "d6fc2519f625d5ee83ad684629a7b7919ed5f0846b26958bef7aea46e359a071"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
