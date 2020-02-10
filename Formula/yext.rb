# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-e7bd7fb6c1d4e4f2ea1b49e2490b6f6f"
  version "0.1"
  sha256 "a370a20865cb417de7cfbf6f0fe33abba0f86e72244a0f0eb083e2155ee36b25"
  revision 22

  def install
    mv "yext-e7bd7fb6c1d4e4f2ea1b49e2490b6f6f", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
