class Figgy < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.5/darwin/figgy.tar.gz"
    sha256 "55009c30715a49b347403efc792ad3f7438baa07e9f91a6441cbf98b7960628a"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 cellar: :any_skip_relocation, catalina: "55009c30715a49b347403efc792ad3f7438baa07e9f91a6441cbf98b7960628a"
        sha256 cellar: :any_skip_relocation, mojave: "55009c30715a49b347403efc792ad3f7438baa07e9f91a6441cbf98b7960628a"
        sha256 cellar: :any_skip_relocation, big_sur: "55009c30715a49b347403efc792ad3f7438baa07e9f91a6441cbf98b7960628a"
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end