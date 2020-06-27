class FiggyAT0038 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.38/darwin/figgy.tar.gz"
    sha256 "6189e81e43de3ea54323ea9d90e588b82a8cab422d28e7baaa85c585a73283fd"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "6189e81e43de3ea54323ea9d90e588b82a8cab422d28e7baaa85c585a73283fd" => :catalina
        sha256 "6189e81e43de3ea54323ea9d90e588b82a8cab422d28e7baaa85c585a73283fd" => :mojave
        sha256 "6189e81e43de3ea54323ea9d90e588b82a8cab422d28e7baaa85c585a73283fd" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end