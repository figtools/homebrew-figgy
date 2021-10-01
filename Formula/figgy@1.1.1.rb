class FiggyAT111 < Formula
  desc "This is the CLI that accompanies the `figgy` configuration management framework"
  homepage "https://figgy.dev"
  url "https://www.figgy.dev/releases/cli/1.1.1/darwin/figgy.tar.gz"
  sha256 "fc031c71608924b387f120dea33a8c67075789255b3a25eca0cf635aa67ffc16"

  bottle do
    root_url "https://www.figgy.dev/bottles"
    rebuild 1
    sha256 catalina: "fc031c71608924b387f120dea33a8c67075789255b3a25eca0cf635aa67ffc16"
    sha256 mojave:   "fc031c71608924b387f120dea33a8c67075789255b3a25eca0cf635aa67ffc16"
    sha256 big_sur:  "fc031c71608924b387f120dea33a8c67075789255b3a25eca0cf635aa67ffc16"
  end

  # depends_on "cmake" => :build

  def install
    puts "installing"
  end

  test do
    system "#{bin}/figgy", "--version"
  end
end
