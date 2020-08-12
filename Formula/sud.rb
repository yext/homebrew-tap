# This formula is for installing the sud command-line interface
class Sud < Formula
  desc "Command-line Interface for sud"
  homepage "http://www.yext.com"
  depends_on "git"
  url "https://github.com/yext/sud/releases/download/0.3/sud-f27731f3df542eff42b4029c1f22db314715037f282faa043a20f49a0ff49a09"
  version "0.3"
  sha256 "f27731f3df542eff42b4029c1f22db314715037f282faa043a20f49a0ff49a09"
  def install
    mv "sud-f27731f3df542eff42b4029c1f22db314715037f282faa043a20f49a0ff49a09", "sud"
    bin.install "sud"
  end

  test do
    system "#{bin}/sud", "--help"
  end
end
