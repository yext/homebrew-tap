# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion@2" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-e181b635a15d8de3227679b8888ac0fe"
  version "0.1"
  sha256 "cb231ff9c823647c90a0a34bd77995b757e349028329957ce2da72fa6a9c87d1"
  revision 379

  def install
    mv "yext-e181b635a15d8de3227679b8888ac0fe", "yext"
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
