class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.65/darwin/figgy.tar.gz"
    sha256 "8df0c208efe16f3032db435644f58269612b8deae2a0863c438b7d3839dfb06c"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "8df0c208efe16f3032db435644f58269612b8deae2a0863c438b7d3839dfb06c" => :catalina
        sha256 "8df0c208efe16f3032db435644f58269612b8deae2a0863c438b7d3839dfb06c" => :mojave
        sha256 "8df0c208efe16f3032db435644f58269612b8deae2a0863c438b7d3839dfb06c" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end