# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-dev.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "8de2e72e95e8d32a62c98cba11c6b1b3c8d9991e56b0b6a7185c7d906edb811f"
  revision 1

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
