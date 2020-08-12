# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://github.com/yext/sud/releases/download/v0.1_17/sud-7b2eaac08884fd41a099cd8d55dde1a70d421dd4d7bfe8c192d08bbaa51cc4f0"
  version "v0.1"
  revision 9
  sha256 "7b2eaac08884fd41a099cd8d55dde1a70d421dd4d7bfe8c192d08bbaa51cc4f0"
  def install
    mv "sud-7b2eaac08884fd41a099cd8d55dde1a70d421dd4d7bfe8c192d08bbaa51cc4f0", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
