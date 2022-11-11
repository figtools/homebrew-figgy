class FiggyAT127 < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.7/darwin/figgy.tar.gz"
    sha256 "9043cff87a1c7602e8ff85ccdc4aa3cf73b510fa52edf2b60a0302d9b570d072"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "9043cff87a1c7602e8ff85ccdc4aa3cf73b510fa52edf2b60a0302d9b570d072"
        sha256 cellar: :any_skip_relocation, mojave: "9043cff87a1c7602e8ff85ccdc4aa3cf73b510fa52edf2b60a0302d9b570d072"
        sha256 cellar: :any_skip_relocation, big_sur: "9043cff87a1c7602e8ff85ccdc4aa3cf73b510fa52edf2b60a0302d9b570d072"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end