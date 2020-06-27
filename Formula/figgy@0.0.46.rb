class FiggyAT0046 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.46/darwin/figgy.tar.gz"
    sha256 "36ed90894efd71aba14b219907847557cb64da9f44c5935d3193ee79f12859b4"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "36ed90894efd71aba14b219907847557cb64da9f44c5935d3193ee79f12859b4" => :catalina
        sha256 "36ed90894efd71aba14b219907847557cb64da9f44c5935d3193ee79f12859b4" => :mojave
        sha256 "36ed90894efd71aba14b219907847557cb64da9f44c5935d3193ee79f12859b4" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end