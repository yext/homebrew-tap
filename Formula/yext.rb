# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-bd0d48c911d1189076b404517b4177e9"
  version "0.1"
  sha256 "a511d32e7f190fffc56c169c2f879eea3762ee51f13fd40301366c69a069b5be"
  revision 25

  def install
    mv "yext-bd0d48c911d1189076b404517b4177e9", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
