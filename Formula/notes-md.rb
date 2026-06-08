class NotesMd < Formula
  desc "Inline Markdown expansion for Apple Notes (background daemon)"
  homepage "https://github.com/karbassi/notes-md"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/karbassi/homebrew-tap/releases/download/notes-md-v#{version}/notes-md-v#{version}-arm64.tar.gz"
      sha256 "af6e710e8bbcc2bf81274ec800fa5818f675e2f8eee1718a557f4ad3ae4bbe18"
    end
  end

  def install
    bin.install "notes-md"
  end

  def caveats
    <<~EOS
      notes-md needs Accessibility permission to observe and synthesize
      keystrokes in Apple Notes. On first run, grant manually:

        System Settings → Privacy & Security → Accessibility →
          add or toggle on `notes-md`

      If the permission appears stuck after an upgrade:

        tccutil reset Accessibility com.karbassi.notes-md

      To run in the foreground (Ctrl-C to stop):

        notes-md

      To run in the background:

        notes-md >/tmp/notes-md.log 2>&1 &

      A small `notes-md` icon will appear in the menu bar with a Quit entry.
    EOS
  end

  test do
    assert_path_exists bin/"notes-md"
    assert_predicate bin/"notes-md", :executable?
  end
end
