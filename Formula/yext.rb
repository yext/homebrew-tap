# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-9ecb70855cb7ecf1aeb9d0d7f66308fa"
  version "0.1"
  sha256 "33e948a58fa5f0122f66de8165c3036f5950687c2398f8e653b86fbacc53aae6"
  revision 47

  def install
    mv "yext-9ecb70855cb7ecf1aeb9d0d7f66308fa", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
