class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v0.1.0/cc-statusline-macos-arm64.tar.gz"
      sha256 "1ff74f85543911c4d6836a93a58e8638ead95b59577de97466f63135677d6547"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v0.1.0/cc-statusline-macos-x86_64.tar.gz"
      sha256 "12afe06dc3c8071ef86a37d0cf6b2d0ce6290c67f81cc07ea2ed6b998b33c4cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v0.1.0/cc-statusline-linux-arm64.tar.gz"
      sha256 "895edae30cec176ed839010f868dc5fedcbeb4c7487459d64f0132a5765fb6fb"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v0.1.0/cc-statusline-linux-x86_64.tar.gz"
      sha256 "aad3936b4c0e81fe5f588e11153b8358328aa37d61e5eb6e868018efb399e369"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    system "#{bin}/cc-statusline", "--help"
  end
end
