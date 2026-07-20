class DecryptPdf < Formula
  desc "Decrypt password-protected PDFs using a cascading strategy (qpdf, mutool, ghostscript)"
  homepage "https://github.com/Sdaas/decrypt-pdf"
  url "https://github.com/Sdaas/decrypt-pdf/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6a7f7f44e77517c00cb76bd4221dd78a2a515d7cde126e6e154c6bf4ba5261b6"
  license "MIT"

  depends_on "qpdf"
  depends_on "mupdf-tools"
  depends_on "ghostscript"

  def install
    # Stamp the release version into the script's placeholder.
    inreplace "decrypt-pdf", "__VERSION__", version.to_s
    bin.install "decrypt-pdf"
  end

  test do
    assert_match "decrypt-pdf #{version}", shell_output("#{bin}/decrypt-pdf --version")
  end
end
