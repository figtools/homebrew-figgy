BREW_TEMPLATE = """class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "%%URL%%"
    sha256 "%%SHA%%"
    
    bottle do
        root_url "https://www.figgy.dev"
        rebuild %%BOTTLE_VERSION%%
        sha256 "%%SHA%%" => :catalina
        sha256 "%%SHA%%" => :mojave
        sha256 "%%SHA%%" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end"""