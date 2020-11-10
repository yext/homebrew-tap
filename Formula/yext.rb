# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6b46660c39592cb45a824cef26343771"
  version "0.1"
  sha256 "e84e629e7a88e4855108ebbcc76d2d356b9e1475d625f83a87758466f8d46d4e"
  revision 57

  def install
    mv "yext-6b46660c39592cb45a824cef26343771", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
    infout = testpath/"info.out"
    system "#{bin}/yext", "info", infout
    assert_predicate infout, :exist?    
  end
end
