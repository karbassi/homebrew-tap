class AppleVoiceMemosCli < Formula
  desc "Extract transcripts from Apple Voice Memos"
  homepage "https://github.com/karbassi/apple-voice-memos-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/apple-voice-memos-cli/releases/download/v#{version}/apple-voice-memos-cli-v#{version}-macos-universal.tar.gz"
    sha256 "17ca007698d9203d482da3f10fd14cc6fa127d1f74863aa6293f76bd9e6f9dc4"

    def install
      bin.install "apple-voice-memos-cli"
    end
  end

  test do
    assert_match "Extract transcripts", shell_output("#{bin}/apple-voice-memos-cli --help")
  end
end
