class FiggyAT0061 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.61/darwin/figgy.tar.gz"
    sha256 "d0ef5daf7d3067c05191d514bfbc69ac444e90aef10bbd69b64e939e0a634716"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "d0ef5daf7d3067c05191d514bfbc69ac444e90aef10bbd69b64e939e0a634716" => :catalina
        sha256 "d0ef5daf7d3067c05191d514bfbc69ac444e90aef10bbd69b64e939e0a634716" => :mojave
        sha256 "d0ef5daf7d3067c05191d514bfbc69ac444e90aef10bbd69b64e939e0a634716" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end