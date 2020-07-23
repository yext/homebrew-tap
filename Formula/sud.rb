# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-e87718800bf2e608c6774dc34c7e10db"
  version "0.1"
  sha256 "f33b6c086e17d145f84d5bd1fc94253a6f10ccabd8c7133374a1436857466687"
  revision 7

  def install
    mv "sud-e87718800bf2e608c6774dc34c7e10db", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
