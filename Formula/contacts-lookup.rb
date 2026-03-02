class ContactsLookup < Formula
  desc "Resolve phone numbers to macOS contact names"
  homepage "https://github.com/karbassi/contacts-lookup"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/contacts-lookup/releases/download/v0.2.0/contacts-lookup-v0.2.0-macos-universal.tar.gz"
    sha256 "bbb99364616659460460d7ec61ce5fda602fa5242d1709ee1c04a0cc3ea5cce7"

    def install
      bin.install "contacts-lookup"
    end
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/contacts-lookup --help")
  end
end
