class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.2.0/git-switchboard-darwin-arm64"
      sha256 "512762cdffbafc2d110e973be92a82c021581f093a215c7652fd8b0b0c473c2a"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.2.0/git-switchboard-darwin-x64"
      sha256 "74091fb6b63fddd5b9f5647207ed89cda323ec82b39d279d2dcad4495b7ce8b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.2.0/git-switchboard-linux-arm64"
      sha256 "1e0cb6d29cb403a96e78a7ac5ec0352859c18da5400762e95f2f3580c7144408"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/v0.2.0/git-switchboard-linux-x64"
      sha256 "befba4dca7793f4aedf2fcc4a6d322e6e4b77f38202adda4a3297e7cfe93ba52"
    end
  end

  def install
    binary = Dir["git-switchboard*"].first
    bin.install binary => "git-switchboard"
  end

  test do
    assert_match "git-switchboard", shell_output("#{bin}/git-switchboard --help")
  end
end
