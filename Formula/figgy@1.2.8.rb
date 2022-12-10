class FiggyAT128 < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.8/darwin/figgy.tar.gz"
    sha256 "55b75ed06ab28141f4b36a57ce261df5f9c1e73941bf78a6181a5938da5d3520"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "55b75ed06ab28141f4b36a57ce261df5f9c1e73941bf78a6181a5938da5d3520"
        sha256 cellar: :any_skip_relocation, mojave: "55b75ed06ab28141f4b36a57ce261df5f9c1e73941bf78a6181a5938da5d3520"
        sha256 cellar: :any_skip_relocation, big_sur: "55b75ed06ab28141f4b36a57ce261df5f9c1e73941bf78a6181a5938da5d3520"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end