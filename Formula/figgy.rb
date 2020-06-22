class Figgy < Formula
    desc "This is the CLI that accompanies the `figgy` configuration management framework."
    homepage "https://figgy.dev"
    url "https://www.figgy.dev/releases/cli/0.0.31/darwin/figgy.tar.gz"
    sha256 "70cfc5afd31390d7161290da7bec564e18be60b0412e4e524cd50210195ebeec"
    
    bottle do
        root_url "https://www.figgy.dev/bottles"
        rebuild 1
        sha256 "70cfc5afd31390d7161290da7bec564e18be60b0412e4e524cd50210195ebeec" => :catalina
        sha256 "70cfc5afd31390d7161290da7bec564e18be60b0412e4e524cd50210195ebeec" => :mojave
        sha256 "70cfc5afd31390d7161290da7bec564e18be60b0412e4e524cd50210195ebeec" => :high_sierra
    end

  # depends_on "cmake" => :build

    def install
        puts "installing"
    end
    
    test do
        system "#{bin}/figgy", "--version"
    end
end