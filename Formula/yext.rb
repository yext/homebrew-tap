# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-0f053ed800c0aad2e733b625cd048774"
  version "0.1"
  sha256 "473f9db159ba045d263a6f3ee2118a3da2e6f1862a12fcc9bc2dc4cd5fe514c0"
  revision 59

  def install
    mv "yext-0f053ed800c0aad2e733b625cd048774", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
    infout = testpath/"info.out"
    system "#{bin}/yext", "info", infout
    assert_predicate infout, :exist?    
  end
end
