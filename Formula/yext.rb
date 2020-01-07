# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-d667899286bcb105bec51745b1400d62"
  version "0.1"
  sha256 "653e5b3e5f2d733f7da2abd46520271c76aeb8004477d43f412d3ed8f2173689"
  revision 17

  def install
    mv "yext-d667899286bcb105bec51745b1400d62", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
