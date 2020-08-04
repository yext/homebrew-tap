# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-4f37e5757e94ccd43169ffb094d62d78"
  version "0.1"
  sha256 "7acd67c9a9c2d91dac4654b94fbb57e0ffd73b8a15dba84318e9628c71ac227e"
  revision 40

  def install
    mv "yext-4f37e5757e94ccd43169ffb094d62d78", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
