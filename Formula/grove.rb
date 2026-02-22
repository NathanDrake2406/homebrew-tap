class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.1/grove-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "f97d27300b4534b31472b388bfe2128589a70da10e7499b30960ee6a8607935f"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.1/grove-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "b6c55f0a0e404595e670f88c0a1ce6645ea25388b87c214301aadd48bbe1b3dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.1/grove-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a06dea0901d61f7dc0d8f57811bde6e9e6f826546dd1737bf5afe3e2969cf2ae"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.1/grove-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e53b8fda26d4922f065651c68a2f73c671e9d4a93d1feeab987982bfc7e4198"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
