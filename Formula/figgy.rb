class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.42/darwin/figgy.tar.gz"
    sha256 "ea981c4b57fe87ccc6d54cb4b9230b90fcb27ed597b58848d03079d32999931b"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "ea981c4b57fe87ccc6d54cb4b9230b90fcb27ed597b58848d03079d32999931b" => :catalina
        sha256 "ea981c4b57fe87ccc6d54cb4b9230b90fcb27ed597b58848d03079d32999931b" => :mojave
        sha256 "ea981c4b57fe87ccc6d54cb4b9230b90fcb27ed597b58848d03079d32999931b" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end