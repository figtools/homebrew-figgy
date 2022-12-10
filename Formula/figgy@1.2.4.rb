class FiggyAT124 < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.4/darwin/figgy.tar.gz"
    sha256 "30e302b3f246da25b7389049d4601bb1c8834e86df48e60d989e6f7bc7e9ba67"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "30e302b3f246da25b7389049d4601bb1c8834e86df48e60d989e6f7bc7e9ba67"
        sha256 cellar: :any_skip_relocation, mojave: "30e302b3f246da25b7389049d4601bb1c8834e86df48e60d989e6f7bc7e9ba67"
        sha256 cellar: :any_skip_relocation, big_sur: "30e302b3f246da25b7389049d4601bb1c8834e86df48e60d989e6f7bc7e9ba67"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end