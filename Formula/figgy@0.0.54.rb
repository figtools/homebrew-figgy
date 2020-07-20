class FiggyAT0054 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.54/darwin/figgy.tar.gz"
    sha256 "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead" => :catalina
        sha256 "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead" => :mojave
        sha256 "e367fe5f7dc4a4c45181204ffea2b6ae947190fcd409609605c123f166984ead" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end