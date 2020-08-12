# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://github.com/yext/sud/archive/v0.1_19.tar.gz"
  version "0.1_19"
  revision 9
  sha256 "5d21b39126ac7ffaa6e9fd32d43b76660b93b212f7f6a04360a123871f3874d2"
  def install
    mv "sud-7b2eaac08884fd41a099cd8d55dde1a70d421dd4d7bfe8c192d08bbaa51cc4f0", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
