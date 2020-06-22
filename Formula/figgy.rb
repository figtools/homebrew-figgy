class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.30a/darwin/figgy.tar.gz"
    sha256 "68210057b2d622631912a5f6a946387d93f6cc3471339348eda7c910c4d49d84"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "68210057b2d622631912a5f6a946387d93f6cc3471339348eda7c910c4d49d84" => :catalina
        sha256 "68210057b2d622631912a5f6a946387d93f6cc3471339348eda7c910c4d49d84" => :mojave
        sha256 "68210057b2d622631912a5f6a946387d93f6cc3471339348eda7c910c4d49d84" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end