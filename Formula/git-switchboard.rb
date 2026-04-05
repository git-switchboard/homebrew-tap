class GitSwitchboard < Formula
  desc "Interactive TUI for browsing and checking out git branches"
  homepage "https://github.com/git-switchboard/git-switchboard"
  version "0.0.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.0-beta.8/git-switchboard-darwin-arm64"
      sha256 "f55d2c2d9d30d3b8964c6634f3824924acd5e8068d6a4fc1b12bab0c6c3590c4"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.0-beta.8/git-switchboard-darwin-x64"
      sha256 "bda9b0b95da78ff8f9d6f7c9feb7f9d81f898dc2be597919838f172034df36dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.0-beta.8/git-switchboard-linux-arm64"
      sha256 "4a046c4088028ac03a6f283d1c6eb9eeee7707946824cb80fc840b93a4d3c260"
    else
      url "https://github.com/git-switchboard/git-switchboard/releases/download/git-switchboard%400.0.0-beta.8/git-switchboard-linux-x64"
      sha256 "e76a1392125b3374ab454ecfa9d78590ff2b5d3974be4d259657fd490b7a23b5"
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
