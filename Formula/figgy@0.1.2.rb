class FiggyAT012 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.1.2/darwin/figgy.tar.gz"
    sha256 "c95c3320119aa243d2e70c8451a133ad8413953195cc43fe5e6c4d83eea77d31"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "c95c3320119aa243d2e70c8451a133ad8413953195cc43fe5e6c4d83eea77d31" => :catalina
        sha256 "c95c3320119aa243d2e70c8451a133ad8413953195cc43fe5e6c4d83eea77d31" => :mojave
        sha256 "c95c3320119aa243d2e70c8451a133ad8413953195cc43fe5e6c4d83eea77d31" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end