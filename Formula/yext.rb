# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-dev.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "e3511b0295cd290025d925ef46dc00bfb457fc9c5c887b79b33012d2de9987b5"
  revision 1

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
