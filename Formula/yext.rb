# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-bed0835deb58603cf0ea11b7c00e9d5d"
  version "0.1"
  sha256 "10663ac3d8cb5ac8248463d8f9f99128f1c64cfa23f5fe2bcda9bd3a52ba233d"
  revision 48

  def install
    mv "yext-bed0835deb58603cf0ea11b7c00e9d5d", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
