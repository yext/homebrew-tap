# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-dbaa334977937c21314952ce22e0158c"
  version "0.1"
  sha256 "575eef0ae70592cdadfd782b1ed8af7dee9f96cc863050a8216001eeff4e4c70"
  revision 50

  def install
    mv "yext-dbaa334977937c21314952ce22e0158c", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
