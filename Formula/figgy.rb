class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.2/darwin/figgy.tar.gz"
    sha256 "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b" => :catalina
        sha256 "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b" => :mojave
        sha256 "401cbb438817f8b235ada19cc86d2f9f8c615d47138cede9213fc76244f16b3b" => :big_sur

    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end