class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.1.0/darwin/figgy.tar.gz"
    sha256 "980a5e3c4db7f799c660ad04defab27709dd7a374f614d2cfcbab40a409ea437"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "980a5e3c4db7f799c660ad04defab27709dd7a374f614d2cfcbab40a409ea437" => :catalina
        sha256 "980a5e3c4db7f799c660ad04defab27709dd7a374f614d2cfcbab40a409ea437" => :mojave
        sha256 "980a5e3c4db7f799c660ad04defab27709dd7a374f614d2cfcbab40a409ea437" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end