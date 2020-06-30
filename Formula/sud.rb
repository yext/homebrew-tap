# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://yext-cli-pub.s3.amazonaws.com/sud/mac/sud-304fa79bfd724d17b34f0294b60e04d7"
  version "0.1"
  sha256 "8c799ae5240f95c9406f3bb2bc6eb07a0f47fd5cd32a0f247d0c8d12513a619b"
  revision 2

  def install
    mv "sud-304fa79bfd724d17b34f0294b60e04d7", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
