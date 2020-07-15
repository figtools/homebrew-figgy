class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.60/darwin/figgy.tar.gz"
    sha256 "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733" => :catalina
        sha256 "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733" => :mojave
        sha256 "fee32e8153c9391ce644cd8d41eaf1686f1fb72075c1e228af4677f4fa3f2733" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end