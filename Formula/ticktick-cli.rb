class TicktickCli < Formula
  desc "CLI for TickTick task management"
  homepage "https://github.com/karbassi/ticktick-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-arm64.tar.gz"
      sha256 "62de63693adc74400f03c52438a5bf4449acf0ef10f6f78d4547cae391143519"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-macos-x86_64.tar.gz"
      sha256 "00e3136f409147758ae489ff9918fd47d030cf25851afc3b5bd63404fce6a27b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-arm64.tar.gz"
      sha256 "0f4e8a5f683c747ef736c62d10d42e6b3df76ff0854d53a02077002f3d720b6c"
    end
    on_intel do
      url "https://github.com/karbassi/ticktick-cli/releases/download/v#{version}/ticktick-cli-linux-x86_64.tar.gz"
      sha256 "119cb6c48b5ae5b676df056d3ed1588d442d3337e9398a131f810c05ddec499e"
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
