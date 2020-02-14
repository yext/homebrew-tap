# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-1aa58d48541f5364633c9badb94a0e57"
  version "0.1"
  sha256 "629b26d28cd5228a9f51639e3d502db2a65b922d915c9a6ab55802cf0c561ecc"
  revision 24

  def install
    mv "yext-1aa58d48541f5364633c9badb94a0e57", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
