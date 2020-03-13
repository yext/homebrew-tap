# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-ebb9686e75b70d468467a60fa588eecb"
  version "0.1"
  sha256 "75d93884de7a1a7769d3354449ffcc1c8f0b7fa9743666ae08ac82c75d18d83d"
  revision 29

  def install
    mv "yext-ebb9686e75b70d468467a60fa588eecb", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
