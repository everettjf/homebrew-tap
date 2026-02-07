cask "pdfread" do
  version "0.1.6"
  sha256 "85da6b01582ab29ddf3c23741e0059c1af7fc7b2f442a7b97e111835f79b173c"

  url "https://github.com/everettjf/PDFRead/releases/download/v#{version}/PDFRead.dmg"
  name "PDFRead"
  desc "Bilingual PDF reader"
  homepage "https://github.com/everettjf/PDFRead"

  app "PDFRead.app"
end
