class FiggyAT0041 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.41/darwin/figgy.tar.gz"
    sha256 "a661430ec02009db129c4f6f00b94d52dee366243d8fb6084360ea9dd588bb26"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "a661430ec02009db129c4f6f00b94d52dee366243d8fb6084360ea9dd588bb26" => :catalina
        sha256 "a661430ec02009db129c4f6f00b94d52dee366243d8fb6084360ea9dd588bb26" => :mojave
        sha256 "a661430ec02009db129c4f6f00b94d52dee366243d8fb6084360ea9dd588bb26" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end