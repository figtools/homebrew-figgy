BREW_TEMPLATE = """class Figgy < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "%%URL%%"
    sha256 "%%SHA%%"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild %%BOTTLE_VERSION%%
        sha256 cellar: :any_skip_relocation, catalina: "%%SHA%%"
        sha256 cellar: :any_skip_relocation, mojave: "%%SHA%%"
        sha256 cellar: :any_skip_relocation, big_sur: "%%SHA%%"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end"""