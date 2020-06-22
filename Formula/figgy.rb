class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.32/darwin/figgy.tar.gz"
    sha256 "72f2d55da37cfddea98da5dfd18a67484daecaf24548801f894ca69d74d23034"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "72f2d55da37cfddea98da5dfd18a67484daecaf24548801f894ca69d74d23034" => :catalina
        sha256 "72f2d55da37cfddea98da5dfd18a67484daecaf24548801f894ca69d74d23034" => :mojave
        sha256 "72f2d55da37cfddea98da5dfd18a67484daecaf24548801f894ca69d74d23034" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end