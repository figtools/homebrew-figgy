class FiggyAT0056 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.56/darwin/figgy.tar.gz"
    sha256 "4dcf6aae6c97a0063068a19eed7fcecfdb9b1bdab8d0ba4cb598724ff087f9c3"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "4dcf6aae6c97a0063068a19eed7fcecfdb9b1bdab8d0ba4cb598724ff087f9c3" => :catalina
        sha256 "4dcf6aae6c97a0063068a19eed7fcecfdb9b1bdab8d0ba4cb598724ff087f9c3" => :mojave
        sha256 "4dcf6aae6c97a0063068a19eed7fcecfdb9b1bdab8d0ba4cb598724ff087f9c3" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end