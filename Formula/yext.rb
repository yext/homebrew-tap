# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-327ad7f497fe27e8dda8e5dd343f28cc"
  version "0.1"
  sha256 "f77f1a2bc733a9254efd80653ee395f24204eddcabb61e228fbbc6a618f703f6"
  revision 38

  def install
    mv "yext-327ad7f497fe27e8dda8e5dd343f28cc", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
