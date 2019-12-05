# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-3ae4a7d0fbae56936b6fcf6a3e33af3b"
  version "0.1"
  sha256 "39dfb10a85182a4fda15b86c17cca498c8467d41cd985b940597250f9e49d24b"
  revision 11

  def install
    mv "yext-3ae4a7d0fbae56936b6fcf6a3e33af3b", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
