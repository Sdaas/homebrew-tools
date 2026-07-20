class SdaasTools < Formula
  desc "Meta-package that installs all sdaas command-line tools"
  homepage "https://github.com/Sdaas/homebrew-tools"
  url "https://github.com/Sdaas/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  # Placeholder sha256 — set to the real archive digest when the meta-formula is
  # released (see Section 5f). Kept as valid 64-char hex so `brew style` passes.
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "sdaas/tools/ask"
  depends_on "sdaas/tools/decrypt-pdf"

  def install
    (prefix/"README.md").write "Meta-formula for sdaas tools.\n"
  end

  test do
    system "true"
  end
end
