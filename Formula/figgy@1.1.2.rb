class FiggyAT112 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/1.1.2/darwin/figgy.tar.gz"
    sha256 "888111197f7a1ab8777002a612d510ffdd210e3cec043d87e134e4413f08ca1e"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "888111197f7a1ab8777002a612d510ffdd210e3cec043d87e134e4413f08ca1e" => :catalina
        sha256 "888111197f7a1ab8777002a612d510ffdd210e3cec043d87e134e4413f08ca1e" => :mojave
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end