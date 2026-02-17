class TicktickCli < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-arm64.tar.gz"
      sha256 "2eb761f58c27461150c7f500ddeb2a2373c8b086397b17d2279dcd1c095dcb35"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-x86_64.tar.gz"
      sha256 "a2c2952f07f756594ec6ec64e86fc75631dc86d71dc7ed9408a4631114d424af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-arm64.tar.gz"
      sha256 "911d6ca13c9fd8840d7a3cdbce1fcf5d82de8bc9e01c25e4e106b72d2808022a"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-x86_64.tar.gz"
      sha256 "5454f428fb1ee8760c82c66c784b82b816b6cc60cc3b2a7b4608e05ae14e25a3"
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

