# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-33081d87bc6adf06de0c5f9c12a718a3"
  version "0.1"
  sha256 "f1f6a4ab967bd19de91045118e0ac6fa225391a2e5200c091b663ba29eaf658c"
  revision 4

  def install
    mv "sud-33081d87bc6adf06de0c5f9c12a718a3", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
