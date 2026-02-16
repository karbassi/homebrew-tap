class TicktickCli < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-arm64.tar.gz"
      sha256 "f5661f59981316e4957729e5e26150e6dfa9b038b0d29c32da003d4b624e8980"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-x86_64.tar.gz"
      sha256 "44513fa9fd394777032aaecc01527680caae79e1b1ac8da895e6b9d33bf7bc5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-arm64.tar.gz"
      sha256 "60d516b107e6a24d2b9d37fcfff48eb5d5622b6311270e32a8a701afc3d97cf6"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-x86_64.tar.gz"
      sha256 "558212c46da43cf097a3a95d63e83823dbeff7c1de4bdb53e454a82c7534b89a"
    end
  end

  def install
    bin.install "ticktick-cli"
    generate_completions_from_executable(bin/"ticktick-cli", shell_parameter_format: :clap)
  end

  test do
    assert_match "ticktick-cli", shell_output("#{bin}/ticktick-cli --version")
  end
end

