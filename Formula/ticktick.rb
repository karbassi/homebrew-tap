class Ticktick < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-macos-arm64.tar.gz"
      sha256 "31cd35202b901907797312a5fdb7723b6514f697844b58cda3d3d91da71a22a1"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-macos-x86_64.tar.gz"
      sha256 "38861b67d1806e012cba5f57d9956a3498d92a1dcbd25727a0c9ea3ad7b9856f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-linux-arm64.tar.gz"
      sha256 "7cb204e96cf3f49350ae7b01402fb8e44f05911a561e7132439fd77cdf9f9575"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-linux-x86_64.tar.gz"
      sha256 "413335b03719a79b368b1ec67b2aa83dbaa0039e2d94c7e2e6240a2fd7e87d6c"
    end
  end

  def install
    bin.install "ticktick"
    generate_completions_from_executable(bin/"ticktick", shell_parameter_format: :clap)
  end

  test do
    assert_match "ticktick", shell_output("#{bin}/ticktick --version")
  end
end
