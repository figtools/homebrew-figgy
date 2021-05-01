class FiggyAT110 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.1.0/darwin/figgy.tar.gz"
    sha256 "f513e351e40b9511258e22f8537e699f559d69adb38e9bd1f3fc4181402a5de2"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "f513e351e40b9511258e22f8537e699f559d69adb38e9bd1f3fc4181402a5de2" => :catalina
        sha256 "f513e351e40b9511258e22f8537e699f559d69adb38e9bd1f3fc4181402a5de2" => :mojave
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end