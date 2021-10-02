class Figgy < Formula
    desc "This is the CLI that accompanies the 'figgy' configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.2.3/darwin/figgy.tar.gz"
    sha256 "0713bcbde0d3ac82842657e8c41ee14bea0288929cb2f2283c9165b8980e8e05"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        digest "0713bcbde0d3ac82842657e8c41ee14bea0288929cb2f2283c9165b8980e8e05" => :catalina
        digest "0713bcbde0d3ac82842657e8c41ee14bea0288929cb2f2283c9165b8980e8e05" => :mojave
        digest "0713bcbde0d3ac82842657e8c41ee14bea0288929cb2f2283c9165b8980e8e05" => :big_sur
    end
    
    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end