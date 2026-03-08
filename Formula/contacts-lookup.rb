class ContactsLookup < Formula
  desc "Resolve phone numbers to macOS contact names"
  homepage "https://github.com/karbassi/contacts-lookup"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/contacts-lookup/releases/download/v0.3.0/contacts-lookup-v0.3.0-macos-universal.tar.gz"
    sha256 "abef5ba888a181bad7e4fcaf9a2751250d10bc93a0a9eb58bd8017e9bb8bb77b"

    def install
      bin.install "contacts-lookup"
    end
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/contacts-lookup --help")
  end
end
