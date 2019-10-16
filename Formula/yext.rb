# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-55c4a3c932b2647c13ab70405cc6a951"
  version "0.1"
  sha256 "b7252c0976a8679f3483d1d26701f54873e4a8964ea1c316fc16476ddd97a3de"
  revision 3

  def install
    mv "yext-55c4a3c932b2647c13ab70405cc6a951", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
