# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion@2" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-b3551ce773c22888c88f3145c98471f8"
  version "0.1"
  sha256 "abb60a971c3d3d13df35f5caf421ae7ca9c46718d2bbfdabb8c1e74ffea76926"
  revision 346

  def install
    mv "yext-b3551ce773c22888c88f3145c98471f8", "yext"
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
