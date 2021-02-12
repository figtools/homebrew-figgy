class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.1.7/darwin/figgy.tar.gz"
    sha256 "eb67ae03abf932b8fe2eae37c73313522af700366978b40bf63378246a02ee85"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "eb67ae03abf932b8fe2eae37c73313522af700366978b40bf63378246a02ee85" => :catalina
        sha256 "eb67ae03abf932b8fe2eae37c73313522af700366978b40bf63378246a02ee85" => :mojave
        sha256 "eb67ae03abf932b8fe2eae37c73313522af700366978b40bf63378246a02ee85" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end