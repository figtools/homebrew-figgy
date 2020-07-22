class FiggyAT0064 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.64/darwin/figgy.tar.gz"
    sha256 "72686b545b8fbbe27a8860fc2a9e72e7bb4144ce404fa03b8d569414282be5ce"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "72686b545b8fbbe27a8860fc2a9e72e7bb4144ce404fa03b8d569414282be5ce" => :catalina
        sha256 "72686b545b8fbbe27a8860fc2a9e72e7bb4144ce404fa03b8d569414282be5ce" => :mojave
        sha256 "72686b545b8fbbe27a8860fc2a9e72e7bb4144ce404fa03b8d569414282be5ce" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end