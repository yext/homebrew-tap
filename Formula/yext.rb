# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-c1a6c0652f259e7e2d3ebe2a63661d58"
  version "0.1"
  sha256 "6435d64a136cb6885339686b250742016231eb81e5e6ba281561b05b40b6b5f5"
  revision 32

  def install
    mv "yext-c1a6c0652f259e7e2d3ebe2a63661d58", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
