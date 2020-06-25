class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.35/darwin/figgy.tar.gz"
    sha256 "0187669878a58a7934c2eeb98eec26388d72f2fbfac21a294fa9b31879de8e4d"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "0187669878a58a7934c2eeb98eec26388d72f2fbfac21a294fa9b31879de8e4d" => :catalina
        sha256 "0187669878a58a7934c2eeb98eec26388d72f2fbfac21a294fa9b31879de8e4d" => :mojave
        sha256 "0187669878a58a7934c2eeb98eec26388d72f2fbfac21a294fa9b31879de8e4d" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end