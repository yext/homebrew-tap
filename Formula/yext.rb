# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-7c97d57a13dc090e2fc1ad5c3e35771b"
  version "0.1"
  sha256 "3def9d088f60ed2be5718eda0b947f4470ca13a5f8c1f63eaa653206a57e70f8"
  revision 19

  def install
    mv "yext-7c97d57a13dc090e2fc1ad5c3e35771b", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
