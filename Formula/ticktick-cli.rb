class TicktickCli < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "1.0.0-rc.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-arm64.tar.gz"
      sha256 "f899a8600a3b3877e6ba4d6cd87ebab3b40d058e4d8602f7964a9b08a85cf85b"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-x86_64.tar.gz"
      sha256 "22bc0b107ad6990a65e54021bd91edba8edd348508150937fcdc25997bdac280"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-arm64.tar.gz"
      sha256 "e7f699f32f0243fd34d59bd0ee7e376544b6326282ed5bac014175d38fb2c932"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-x86_64.tar.gz"
      sha256 "42752eed135aff64c4fc92bdb34d791677da9ea612105dab5398b15148d907df"
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
