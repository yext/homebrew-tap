# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion@2" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-c4e2a56575ef7d8c64c9ea928bcfbcf5"
  version "0.1"
  sha256 "76b256337b113090a2ab3da4ab0a732c05110d29ec2e3d3e73c916e7440075a7"
  revision 407

  def install
    mv "yext-c4e2a56575ef7d8c64c9ea928bcfbcf5", "yext"
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
