class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://files.pythonhosted.org/packages/89/2e/13a43c79a8b0561185d42176b4798f8ebc8fc497e01c076e2a4eb282a4fc/figgy-cli-0.0.30a0.tar.gz"
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