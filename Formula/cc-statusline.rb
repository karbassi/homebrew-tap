class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "20baa3ba5d5a3152a420da9ccd7ba3bf5c00d99a5124ce4abc62478b4b0afc29"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "38aabcc0de696d24cb13552202a786c64b399154239d6e63173a856a82e2c8c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "59793a69acc81d79f1bb9f8de302bed1c7ed922417b4ec233fc080aab5a3934c"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
