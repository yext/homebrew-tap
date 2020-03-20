# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-bcb47e0d65d6503fcf49ada54e871a2e"
  version "0.1"
  sha256 "3526bdc7298a070a9a616a5d2920bca1539f4d47a618ea16c245a026c2535f39"
  revision 30

  def install
    mv "yext-bcb47e0d65d6503fcf49ada54e871a2e", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
