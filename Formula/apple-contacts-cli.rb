class AppleContactsCli < Formula
  desc "Resolve phone numbers to macOS contact names"
  homepage "https://github.com/karbassi/apple-contacts-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/apple-contacts-cli/releases/download/v0.4.0/apple-contacts-cli-v0.4.0-macos-universal.tar.gz"
    sha256 "178ee7a9e960fafb3d4508430073b36bddcd33ca716ce16af77b6e3b9012ea25"

    def install
      bin.install "apple-contacts-cli"
    end
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/apple-contacts-cli --help")
  end
end
