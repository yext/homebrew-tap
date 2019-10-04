# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-dev.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "234edc050c4591640ec7caebeaf437e4c08d2325d262d15cd4f7c99e052d8cdc"
  revision 1

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
