class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.30a/darwin/figgy.tar.gz"
    sha256 "81c60a74d991af1cd8e8063d45d3ec2ca0c18b8631638f86ada994af2addfe26"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "81c60a74d991af1cd8e8063d45d3ec2ca0c18b8631638f86ada994af2addfe26" => :catalina
        sha256 "81c60a74d991af1cd8e8063d45d3ec2ca0c18b8631638f86ada994af2addfe26" => :mojave
        sha256 "81c60a74d991af1cd8e8063d45d3ec2ca0c18b8631638f86ada994af2addfe26" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end