class FiggyAT013 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.1.3/darwin/figgy.tar.gz"
    sha256 "86ec90f5a4fd43937c76fcb9684d82978ab82a63fe9d9a9476ad4883ec1660b7"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "86ec90f5a4fd43937c76fcb9684d82978ab82a63fe9d9a9476ad4883ec1660b7" => :catalina
        sha256 "86ec90f5a4fd43937c76fcb9684d82978ab82a63fe9d9a9476ad4883ec1660b7" => :mojave
        sha256 "86ec90f5a4fd43937c76fcb9684d82978ab82a63fe9d9a9476ad4883ec1660b7" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end