class FiggyAT0055 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.55/darwin/figgy.tar.gz"
    sha256 "324a53cb503eabf6def1fbe69ca745cd1d2cd162b2fed9eea9a44d0a1adacaeb"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "324a53cb503eabf6def1fbe69ca745cd1d2cd162b2fed9eea9a44d0a1adacaeb" => :catalina
        sha256 "324a53cb503eabf6def1fbe69ca745cd1d2cd162b2fed9eea9a44d0a1adacaeb" => :mojave
        sha256 "324a53cb503eabf6def1fbe69ca745cd1d2cd162b2fed9eea9a44d0a1adacaeb" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end