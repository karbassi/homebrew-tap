class CcStatusline < Formula
  desc "Lightweight, fast status line for Claude Code CLI"
  homepage "https://github.com/karbassi/cc-status-line"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-arm64.tar.gz"
      sha256 "b34723f9567b623505efa41c54d0341ca63f014a7b211746bb1a2a788436b313"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-macos-x86_64.tar.gz"
      sha256 "6b4d745388e54fc2506b35aeb17cabfb80a47389be05021c20f2eabecc36643f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-arm64.tar.gz"
      sha256 "9d4776423b19f05a31f4e0a91990260e788cb413b077336a4be318fbd5740ab0"
    end
    on_intel do
      url "https://github.com/karbassi/cc-status-line/releases/download/v#{version}/cc-statusline-linux-x86_64.tar.gz"
      sha256 "622d04511d3e9f68f649f8e10220644a3ebe8160778e95c82cd679c25669bca8"
    end
  end

  def install
    bin.install "cc-statusline"
  end

  test do
    assert_predicate bin/"cc-statusline", :executable?
  end
end
