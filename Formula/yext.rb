# This formula is for installing the Yext command-line interface
class Yext < Formula
  desc "Command-line Interface for Yext Platform"
  homepage "http://www.yext.com"
  depends_on "git"
  depends_on "bash-completion" => :recommended
  url "https://yext-cli-pub.s3.amazonaws.com/cli/mac/yext-04cca952f9c983610612c0c876ba435b"
  version "0.1"
  sha256 "a09bda0cac61b6a2c8664f8ec14706dc0237e9ebe67e276f29d7cf6b5652dc2b"
  revision 71

  def install
    mv "yext-04cca952f9c983610612c0c876ba435b", "yext"
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
