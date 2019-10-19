# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-5d04c75e60e324860f8a345e595c72bb"
  version "0.1"
  sha256 "24eed3185ff6b24abf11d16f304f524af7671947a5f2e6ccfb608583247af375"
  revision 5

  def install
    mv "yext-5d04c75e60e324860f8a345e595c72bb", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
