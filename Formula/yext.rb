# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-fed7f1dc383969fbc3379226d5c81a84"
  version "0.1"
  sha256 "c71c9f17777d0221b6f5804ff97d7803d86f90a5f3f4d888e98b057a820555ac"
  revision 328

  def install
    mv "yext-fed7f1dc383969fbc3379226d5c81a84", "yext"
    bin.install "yext"

    # s3 doesnt retain file permissions, so have to do this to add autocomplete
    system "chmod +x #{bin}/yext"

    # add bash autocomplete
    output = Utils.safe_popen_read("#{bin}/yext", "completion", "bash")
    (bash_completion/"yext").write output

    # add zsh autocomplete
    output = Utils.safe_popen_read("#{bin}/yext", "completion", "zsh")
    (zsh_completion/"_yext").write output
  
  end

  test do
    system "#{bin}/yext", "--help"
    infout = testpath/"info.out"
    system "#{bin}/yext", "info", infout
    assert_predicate infout, :exist?
  end
end
