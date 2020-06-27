class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.51/darwin/figgy.tar.gz"
    sha256 "403fa4569bf456d7c247822b36f558c37abac0554069cfdd5db426e8d692db4e"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "403fa4569bf456d7c247822b36f558c37abac0554069cfdd5db426e8d692db4e" => :catalina
        sha256 "403fa4569bf456d7c247822b36f558c37abac0554069cfdd5db426e8d692db4e" => :mojave
        sha256 "403fa4569bf456d7c247822b36f558c37abac0554069cfdd5db426e8d692db4e" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end