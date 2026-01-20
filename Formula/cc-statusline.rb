class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "078e4c0a86e13d1c21e88a45df509d84626817e69f1f6eda8d647cc6468b6590"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "f7a7df217b4a65424c08567fe4c6c8c50213a20f9b0beb764b8a019ff1e3e67e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-arm64.tar.gz"
      sha256 "2ab1c5443f33b3b114f65dc67a0ae8d88870d0985170b73a389f1c0663896b23"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "ca27fd8b832461068c6c1d3008bf7acaaec9bb43141aa3555b6b65a710d4c930"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
