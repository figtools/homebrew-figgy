class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.44/darwin/figgy.tar.gz"
    sha256 "252f448dfd980b20178793a87a1ea05527662d6e00f484e683a863634c31143b"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "252f448dfd980b20178793a87a1ea05527662d6e00f484e683a863634c31143b" => :catalina
        sha256 "252f448dfd980b20178793a87a1ea05527662d6e00f484e683a863634c31143b" => :mojave
        sha256 "252f448dfd980b20178793a87a1ea05527662d6e00f484e683a863634c31143b" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end