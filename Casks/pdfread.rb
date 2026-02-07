cask "pdfread" do
  version "0.1.4"
  sha256 "ee1f22360aa635d82a41bf46b76cc139517a3510ca7d92ff6d14cedc79206d32"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
