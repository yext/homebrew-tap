# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6f6767683e313ac8616f8e03ef1b2712"
  version "0.1"
  sha256 "b297700e85023997a515defc5f3547e7416d0ce8b3ec5499a7e9ec35befe9ca9"
  revision 56

  def install
    mv "yext-6f6767683e313ac8616f8e03ef1b2712", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
    infout = testpath/"info.out"
    system "#{bin}/yext", "info", infout
    assert_predicate infout, :exist?    
  end
end
