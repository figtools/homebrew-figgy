class FiggyAT0047 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.47/darwin/figgy.tar.gz"
  sha256 "00cedad3d45fad2499a169e1dba0c7e3e08a257d70a9bb261459410a7d5ca227"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "00cedad3d45fad2499a169e1dba0c7e3e08a257d70a9bb261459410a7d5ca227"
    sha256 mojave:      "00cedad3d45fad2499a169e1dba0c7e3e08a257d70a9bb261459410a7d5ca227"
    sha256 high_sierra: "00cedad3d45fad2499a169e1dba0c7e3e08a257d70a9bb261459410a7d5ca227"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
