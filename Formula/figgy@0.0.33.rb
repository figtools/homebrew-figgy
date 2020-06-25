class FiggyAT0033 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.33/darwin/figgy.tar.gz"
    sha256 "6662947813408cad494e9e8305d718549695ff6b36266fa05fcd32b68453905e"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "6662947813408cad494e9e8305d718549695ff6b36266fa05fcd32b68453905e" => :catalina
        sha256 "6662947813408cad494e9e8305d718549695ff6b36266fa05fcd32b68453905e" => :mojave
        sha256 "6662947813408cad494e9e8305d718549695ff6b36266fa05fcd32b68453905e" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end