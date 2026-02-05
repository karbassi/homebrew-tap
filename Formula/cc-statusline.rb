class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "d789ecc46a9f20d1a8638bba0f490ed0354e378ae659aff69cdee102e74e931c"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "194f7cdf0bf66bac3cc4e91c1a1f5f550cef017270a48409f6bd660b9cd85b22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "29e0212f7759b4b0868fbc7f1d6a21624463ed8091d0301c6468bd275739f5a2"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
