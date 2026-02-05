class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "7b8b077869a56b35767aaf89cd125da76230408ad75d09dd4327fc345d8723c7"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "7d1d299bbced43f8192953294d4a3be3f17d9f12705fee1d6b34a7bd29d80ddb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "08b9aa81fc67332e5a9751fd932f0bbc2286c8f81dd749a148169f1410ddb210"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
