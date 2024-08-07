# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion@2" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-6cd8670d2d1f3766d5552fd4f05d9b02"
  version "0.1"
  sha256 "4907682515ef5d345156bfc68d8328d66ffcce58c338e9ba3722a90221635d2b"
  revision 416

  def install
    mv "yext-6cd8670d2d1f3766d5552fd4f05d9b02", "yext"
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
