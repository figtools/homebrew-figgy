class FiggyAT0062 < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.62/darwin/figgy.tar.gz"
    sha256 "702a9067d6c1e54991a022c9091248fbc6833ce1d4f03bcc0fbf2f59fa827c24"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "702a9067d6c1e54991a022c9091248fbc6833ce1d4f03bcc0fbf2f59fa827c24" => :catalina
        sha256 "702a9067d6c1e54991a022c9091248fbc6833ce1d4f03bcc0fbf2f59fa827c24" => :mojave
        sha256 "702a9067d6c1e54991a022c9091248fbc6833ce1d4f03bcc0fbf2f59fa827c24" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end