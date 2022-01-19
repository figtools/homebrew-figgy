class Figgy < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.6/darwin/figgy.tar.gz"
    sha256 "641ccb2c684e155fb22669a194d167b214933f4707285c43a060b7d0fa012e05"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "641ccb2c684e155fb22669a194d167b214933f4707285c43a060b7d0fa012e05"
        sha256 cellar: :any_skip_relocation, mojave: "641ccb2c684e155fb22669a194d167b214933f4707285c43a060b7d0fa012e05"
        sha256 cellar: :any_skip_relocation, big_sur: "641ccb2c684e155fb22669a194d167b214933f4707285c43a060b7d0fa012e05"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end