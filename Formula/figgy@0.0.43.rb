class FiggyAT0043 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.43/darwin/figgy.tar.gz"
    sha256 "bb35fdab97f2d995691e75945e4af7a2f7e2342353186fb2a6253ad50f51e4fd"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "bb35fdab97f2d995691e75945e4af7a2f7e2342353186fb2a6253ad50f51e4fd" => :catalina
        sha256 "bb35fdab97f2d995691e75945e4af7a2f7e2342353186fb2a6253ad50f51e4fd" => :mojave
        sha256 "bb35fdab97f2d995691e75945e4af7a2f7e2342353186fb2a6253ad50f51e4fd" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end