cask "pdfread" do
  version "0.1.8"
  sha256 "163485c9ba8a2fec73365b80e4d7d33606fd1d620fc39467f6cdeeb13b520244"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
