class Loom < Formula
  desc "CLI for managing Loom videos"
  homepage "https://github.com/karbassi/loom-api"
  version "1.0.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom --version")
  end
end
