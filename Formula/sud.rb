# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-70a7ecd9c294e3bb425a4d1692906eb1"
  version "0.1"
  sha256 "1a9fbde21dfa82e34d24e0c2f6263991cd7c4f452eba37b906ba066d1dfc2781"
  revision 1

  def install
    mv "sud-70a7ecd9c294e3bb425a4d1692906eb1", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
