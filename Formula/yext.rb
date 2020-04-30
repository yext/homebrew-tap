# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-9643850b37236b70b789cd00614d82c4"
  version "0.1"
  sha256 "d2f8c796c7e2cb3580983898b81954fcb655d74226e294982ae76ee56b6f7cff"
  revision 35

  def install
    mv "yext-9643850b37236b70b789cd00614d82c4", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
