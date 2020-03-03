# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-548aabe1fe48610e68f1ef938e1d4693"
  version "0.1"
  sha256 "680c81c5e4ba2815354f4235599cfea7f878d1996be6e26407095fee161e4ad0"
  revision 28

  def install
    mv "yext-548aabe1fe48610e68f1ef938e1d4693", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
