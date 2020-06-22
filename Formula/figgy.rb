class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.30a/darwin/figgy.tar.gz"
    sha256 "12545a177eb419ed3679a6207f2219eedf608600f83d1ab86d575139177b5f9d"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "12545a177eb419ed3679a6207f2219eedf608600f83d1ab86d575139177b5f9d" => :catalina
        sha256 "12545a177eb419ed3679a6207f2219eedf608600f83d1ab86d575139177b5f9d" => :mojave
        sha256 "12545a177eb419ed3679a6207f2219eedf608600f83d1ab86d575139177b5f9d" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end