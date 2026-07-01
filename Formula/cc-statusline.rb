class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "1795c7805e1ff181e067f7a33ddddaf152e2fe4dd0b41b6683c335d8ec566f10"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "33a28223e5d1fd80b5b0c2e0648f58f154c11b7d3853b75498062aa325c1630a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "b534876a90b45d08d818173522c716863eabaec2a9bd2f8b2f3914ed2f131285"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
