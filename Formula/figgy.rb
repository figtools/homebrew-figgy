class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.36/darwin/figgy.tar.gz"
    sha256 "aae3878ef51daa99a98e5e7e6f4d6017d32bbad1513f66c096e4e22cf67e49c2"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "aae3878ef51daa99a98e5e7e6f4d6017d32bbad1513f66c096e4e22cf67e49c2" => :catalina
        sha256 "aae3878ef51daa99a98e5e7e6f4d6017d32bbad1513f66c096e4e22cf67e49c2" => :mojave
        sha256 "aae3878ef51daa99a98e5e7e6f4d6017d32bbad1513f66c096e4e22cf67e49c2" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end