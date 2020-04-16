# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-a61780f149c66010b7e94c89056db590"
  version "0.1"
  sha256 "f7d3cb6088636fe91825687ad69eedda68f5ae17395c37ac81905e377eb61fc7"
  revision 34

  def install
    mv "yext-a61780f149c66010b7e94c89056db590", "yext"
    bin.install "yext"
  end

  test do
    system "#{bin}/yext", "--help"
  end
end
