class FiggyAT0037 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/0.0.37/darwin/figgy.tar.gz"
  sha256 "081c3a9517209342409078bee4685c35702689863c81d82e192b3cd934ec835f"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina:    "081c3a9517209342409078bee4685c35702689863c81d82e192b3cd934ec835f"
    sha256 mojave:      "081c3a9517209342409078bee4685c35702689863c81d82e192b3cd934ec835f"
    sha256 high_sierra: "081c3a9517209342409078bee4685c35702689863c81d82e192b3cd934ec835f"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
