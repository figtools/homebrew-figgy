class FiggyAT0045 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.45/darwin/figgy.tar.gz"
    sha256 "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773" => :catalina
        sha256 "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773" => :mojave
        sha256 "125e60a7ba51551baedacd88d8590ffad6384ea006dbf3efd27733570d0f7773" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end