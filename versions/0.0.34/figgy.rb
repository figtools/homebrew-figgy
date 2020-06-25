class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.34/darwin/figgy.tar.gz"
    sha256 "cca2c8cb243a4aadfcb826659d05401f3afc22a477f6467efb798ede9f5c31c6"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "cca2c8cb243a4aadfcb826659d05401f3afc22a477f6467efb798ede9f5c31c6" => :catalina
        sha256 "cca2c8cb243a4aadfcb826659d05401f3afc22a477f6467efb798ede9f5c31c6" => :mojave
        sha256 "cca2c8cb243a4aadfcb826659d05401f3afc22a477f6467efb798ede9f5c31c6" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end