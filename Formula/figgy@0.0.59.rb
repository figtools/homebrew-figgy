class FiggyAT0059 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.59/darwin/figgy.tar.gz"
    sha256 "e005c425e571fd9e2679db3b0503334c51565f2de6962c77e74d261eaccf718e"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "e005c425e571fd9e2679db3b0503334c51565f2de6962c77e74d261eaccf718e" => :catalina
        sha256 "e005c425e571fd9e2679db3b0503334c51565f2de6962c77e74d261eaccf718e" => :mojave
        sha256 "e005c425e571fd9e2679db3b0503334c51565f2de6962c77e74d261eaccf718e" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end