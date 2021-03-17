# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://github.com/yext/sud/releases/download/v0.1_22/sud-ad8a666f766bf0d7f8d07975663035181f8a6e8554a5d93e31ca50d09ced4159"
  version "0.1_22"
  revision 9
  sha256 "ad8a666f766bf0d7f8d07975663035181f8a6e8554a5d93e31ca50d09ced4159"
  def install
    mv "sud-ad8a666f766bf0d7f8d07975663035181f8a6e8554a5d93e31ca50d09ced4159", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
