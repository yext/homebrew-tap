# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://github.com/yext/sud/releases/download/0.2/sud-5c15b463b8e014518566c9689eb2dada41737db2ab0aad7fc4dc303014bc591f"
  version "0.1"
  sha256 "5c15b463b8e014518566c9689eb2dada41737db2ab0aad7fc4dc303014bc591f"
  revision 9
  def install
    mv "sud-5c15b463b8e014518566c9689eb2dada41737db2ab0aad7fc4dc303014bc591f", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
