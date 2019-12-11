# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-40f677a716f24d19642d244f9b0ae42e"
  version "0.1"
  sha256 "eae40ef5282822b8a52f75cb36dc2cc3f6bf0109369dc43dc3257c8ed4430510"
  revision 14

  def install
    mv "yext-40f677a716f24d19642d244f9b0ae42e", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
