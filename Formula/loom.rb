class Loom < Formula
  desc "CLI for managing Loom videos"
  homepage "https://github.com/karbassi/loom-api"
  version "1.0.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-macos-arm64.tar.gz"
      sha256 "71dc1ec5f602e4f7e05a83888c3f7242fb64f0b104e75a96798bc832154c3e90"
    end
    on_intel do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-macos-x86_64.tar.gz"
      sha256 "d66879a4366efc1ceed7e6bc34235cce5520d73f57f30dea670795ac78450324"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/karbassi/loom-api/releases/download/v#{version}/loom-linux-x86_64.tar.gz"
      sha256 "95f694bf3340f89078837784c47c16cdf598db0fe703e7c1b9c20c246406b670"
    end
  end

  def install
    bin.install "loom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loom --version")
  end
end
