class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.30a/darwin/figgy.tar.gz"
    sha256 "6bcf26b988d88748f45f59675f0feda69448a6f076f60ac9821d879769713f02"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "6bcf26b988d88748f45f59675f0feda69448a6f076f60ac9821d879769713f02" => :catalina
        sha256 "6bcf26b988d88748f45f59675f0feda69448a6f076f60ac9821d879769713f02" => :mojave
        sha256 "6bcf26b988d88748f45f59675f0feda69448a6f076f60ac9821d879769713f02" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end