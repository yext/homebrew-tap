# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-dev.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "f08a2371c3b3eef1ebd2aecffc92667da75120b54f4dfd38c393b838590772b5"
  revision 1

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
