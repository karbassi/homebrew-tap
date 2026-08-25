class Ud < Formula
  desc "Resolve a fish prompt_pwd-style shortened path back to its full filesystem path"
  homepage "https://github.com/karbassi/ud"
  # karbassi/ud is a private repo, so this builds from source over SSH rather
  # than pouring a release tarball: Homebrew dropped its private-release
  # download strategies, and the alternative is embedding a GitHub token in a
  # public formula. Homebrew's git strategy shells out to the `git` CLI, so
  # the same SSH agent that clones the repo by hand is what authenticates here
  # — no token, no extra setup.
  #
  # `revision` pins the exact commit so the formula is reproducible even if
  # the tag ever moves.
  url "ssh://git@github.com/karbassi/ud.git",
      tag:      "v0.1.0",
      revision: "b56bde009219e3cab127e2d8c80ec38fc3e34c49"
  license "MIT"

  head "ssh://git@github.com/karbassi/ud.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args

    # `ud completions <shell>` takes the shell as a bare positional, which is
    # Homebrew's default; passing shell_parameter_format would emit `--shell=`.
    generate_completions_from_executable(bin/"ud", "completions")
  end

  def caveats
    <<~EOS
      To make `ud <path>` cd directly, add the shell integration:

        # bash / zsh
        eval "$(ud init bash)"        # or: ud init zsh

        # fish
        ud init fish | source

        # nushell
        ^ud init nushell | save -f ($nu.default-config-dir | path join "ud-init.nu")

      Install zoxide to rank ambiguous matches by frecency instead of mtime:

        brew install zoxide
    EOS
  end

  test do
    # --version carries a git build id when built from a checkout with .git.
    assert_match version.to_s, shell_output("#{bin}/ud --version")

    # End-to-end resolution: an abbreviated path resolves to the real one.
    (testpath/"work/clients/acme/scripts/42-rewrite").mkpath
    assert_equal (testpath/"work/clients/acme/scripts/42-rewrite").to_s,
                 shell_output("#{bin}/ud --root #{testpath} w/c/a/s/42-rewrite").chomp

    # A miss is reported, not silent.
    output = shell_output("#{bin}/ud --root #{testpath} q/nope 2>&1", 1)
    assert_match "no directory matches", output

    # The generated wrapper passes print-only invocations through instead of
    # feeding them to `cd`.
    assert_match "ud()", shell_output("#{bin}/ud init bash")
  end
end
