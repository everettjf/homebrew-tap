cask "pdfread" do
  version "0.1.5"
  sha256 "6269cde859143b445523dd55ee78e8d496078984974b2d9f17e1bde2260e0933"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
