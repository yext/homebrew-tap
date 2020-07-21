# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-17044e293b9afd97f86d33f62c2dc7ce"
  version "0.1"
  sha256 "f4d5fe5fac3269175d6c4f440f7b7e1c2745a839d3908316b550233ea29f75d7"
  revision 6

  def install
    mv "sud-17044e293b9afd97f86d33f62c2dc7ce", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
