class ContactsLookup < Formula
  desc "Resolve phone numbers to macOS contact names"
  homepage "https://github.com/karbassi/contacts-lookup"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/contacts-lookup/releases/download/v#{version}/contacts-lookup-v#{version}-macos-universal.tar.gz"
    sha256 "PLACEHOLDER"

    def install
      bin.install "contacts-lookup"
    end
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/contacts-lookup --help")
  end
end
