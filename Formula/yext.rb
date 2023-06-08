# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-0045894c97ccd7427fb7cd3515eaac8a"
  version "0.1"
  sha256 "2ed53cc0a81e66881543a26c616905067770ab5b89457b98051987e1bd7aecbd"
  revision 340

  def install
    mv "yext-0045894c97ccd7427fb7cd3515eaac8a", "yext"
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
