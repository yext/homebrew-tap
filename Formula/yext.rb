# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion@2" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-390cca2977367a65757464ae8f5c5b34"
  version "0.1"
  sha256 "1b879cf6eca194b9de6e470dcc72ef6166f81c3e93f64daee80c4fe15cf31c82"
  revision 380

  def install
    mv "yext-390cca2977367a65757464ae8f5c5b34", "yext"
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
