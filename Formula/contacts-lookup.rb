class ContactsLookup < Formula
  desc "Resolve phone numbers to macOS contact names"
  homepage "https://github.com/karbassi/contacts-lookup"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/contacts-lookup/releases/download/v0.1.0/contacts-lookup-v0.1.0-macos-universal.tar.gz"
    sha256 "ce2c775776da9fddf8dee4bf47e88336d0a1c8568c69595cad28545f1c4255ec"

    def install
      bin.install "contacts-lookup"
    end
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/contacts-lookup --help")
  end
end
