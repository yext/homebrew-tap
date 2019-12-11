# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-b38f5b235c3eae3198cc589c83dd4c72"
  version "0.1"
  sha256 "aedcca891de03fc9b30123a9dedf55507e524bdaa217a56b0ae6dd64ec087c54"
  revision 15

  def install
    mv "yext-b38f5b235c3eae3198cc589c83dd4c72", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
