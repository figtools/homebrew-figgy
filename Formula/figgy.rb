class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.1.1/darwin/figgy.tar.gz"
    sha256 "d2326399c166d51f67eea935f5b410101cef33008a1adc1d8d6d606c725db305"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "d2326399c166d51f67eea935f5b410101cef33008a1adc1d8d6d606c725db305" => :catalina
        sha256 "d2326399c166d51f67eea935f5b410101cef33008a1adc1d8d6d606c725db305" => :mojave
        sha256 "d2326399c166d51f67eea935f5b410101cef33008a1adc1d8d6d606c725db305" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end