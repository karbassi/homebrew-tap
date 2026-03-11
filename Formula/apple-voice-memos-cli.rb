class AppleVoiceMemosCli < Formula
  desc "Extract transcripts from Apple Voice Memos"
  homepage "https://github.com/karbassi/apple-voice-memos-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/karbassi/apple-voice-memos-cli/releases/download/v0.2.0/apple-voice-memos-cli-v0.2.0-macos-universal.tar.gz"
    sha256 "c7cff716accbd3784bbfffaeaf7142f7cb0e8cde80b4d3f8b61aa2d8529bef47"

    def install
      bin.install "apple-voice-memos-cli"
    end
  end

  test do
    assert_match "Extract transcripts", shell_output("#{bin}/apple-voice-memos-cli --help")
  end
end
