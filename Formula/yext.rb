# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-51de3608f0c6db7f4904cd72d71e1e7c"
  version "0.1"
  sha256 "216ec23a6c7aa3d46ff74795f5d701539b272ea8492f3066369c3b0472df234c"
  revision 33

  def install
    mv "yext-51de3608f0c6db7f4904cd72d71e1e7c", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
