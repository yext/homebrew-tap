# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-b70a292811c9d5561cf8280c5df5a2f3"
  version "0.1"
  sha256 "9abca20c02e2c92e4fb06217c29e7cde5ff8e891352563874b6aad50abc544ad"
  revision 8

  def install
    mv "sud-b70a292811c9d5561cf8280c5df5a2f3", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
