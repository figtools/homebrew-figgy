class Figgy < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.10/darwin/figgy.tar.gz"
    sha256 "3e1865b375e1c47f0ceaebdaebd2cad9cbdc33bfab3ce9dfd8b181296d55bf8e"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "3e1865b375e1c47f0ceaebdaebd2cad9cbdc33bfab3ce9dfd8b181296d55bf8e"
        sha256 cellar: :any_skip_relocation, mojave: "3e1865b375e1c47f0ceaebdaebd2cad9cbdc33bfab3ce9dfd8b181296d55bf8e"
        sha256 cellar: :any_skip_relocation, big_sur: "3e1865b375e1c47f0ceaebdaebd2cad9cbdc33bfab3ce9dfd8b181296d55bf8e"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end