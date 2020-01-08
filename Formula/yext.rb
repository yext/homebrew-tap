# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-38eaf9da96356c73d48c277acb53e870"
  version "0.1"
  sha256 "87fa5779e54c4c8211e293bb8e330514e8a700be487ba5472ad321a14f1391ee"
  revision 18

  def install
    mv "yext-38eaf9da96356c73d48c277acb53e870", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
