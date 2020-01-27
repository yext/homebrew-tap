# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-fbf15a6a53a7e59ecf06d60422794bdc"
  version "0.1"
  sha256 "933bf35334693e0fd30ed241fc2f606be59070323cc63c780d561bfa756dcf47"
  revision 20

  def install
    mv "yext-fbf15a6a53a7e59ecf06d60422794bdc", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
