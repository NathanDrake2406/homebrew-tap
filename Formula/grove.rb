class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.1/grove-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "09caf0f31a8d2940cf1e5de5c159fd6f84c1ee65e99cfcbec32b7f30a6ba157c"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.1/grove-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "7239e7ae9d7893d1a825cca1c57dd042f01770763faa4c45afbd03067cb9b3e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.1/grove-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da78a52a62b8f92233c72285f26e2d6eb8e69ef895e5a1ffc03fd9507fb85ef4"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.1/grove-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5cced965a6c6bd73951cf9623405c16c5005e35b3657e51f06054fa24437e24"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
