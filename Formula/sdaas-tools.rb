class SdaasTools < Formula
  desc "Meta-package that installs all sdaas command-line tools"
  homepage "https://github.com/Sdaas/homebrew-tools"
  url "https://github.com/Sdaas/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4eb94b72397ba6d4787a1eb739f2692b2b10201a2c57f1af41f55e4a6053e17e"
  license "MIT"

  depends_on "sdaas/tools/ask"
  depends_on "sdaas/tools/decrypt-pdf"

  def install
    # Meta-formula ships no binaries; write a doc into a standard subdirectory
    # so Homebrew does not reject the keg as an "empty installation".
    (pkgshare/"README.md").write "Meta-formula that installs all sdaas command-line tools.\n"
  end

  test do
    system "true"
  end
end
