cask "pdfread" do
  version "0.1.7"
  sha256 "2b15889de5b02c707249c623759178ec0aa94cfbf553b7965e09538de113a507"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
