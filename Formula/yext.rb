# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  url "https://yext-cli-dev.s3.amazonaws.com/cli/mac/yext"
  version "0.1"
  sha256 "fc0af0b54feff380efa4dce860ec521c0a5fd6f821991a04715f8723876e9bec"
  revision 1

  def install
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
