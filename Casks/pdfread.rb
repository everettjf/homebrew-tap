cask "pdfread" do
  version "0.1.3"
  sha256 "75f7972d1241fc102f3c25f12fd790a89c73b5e755b688ad212d60bdf2f9d6f6"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
