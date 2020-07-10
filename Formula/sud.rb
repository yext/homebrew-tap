# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-0c4f108165bb7d9d6ba0d4ad1f3350e7"
  version "0.1"
  sha256 "adace932e91ac5f05b2209214a3534ec26414fbcd0b15895943a6aa8e964bc76"
  revision 5

  def install
    mv "sud-0c4f108165bb7d9d6ba0d4ad1f3350e7", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
