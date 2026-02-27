class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.1/grove-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "9d097dc682ae0c50df463bc3a27fe99315f21fc9c43c2f6b2b7709d010747fb7"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.1/grove-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "04247eaace00d373df5d11e9f559304d0c81c9ad8a592720cb86536de1478849"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.1/grove-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a9e398f6989e164c025957c8be69bc9e0012ab62d0b6c87dcec2c12b9e66643"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.1/grove-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac527f5be4a458403fe28248d4addc3d285696a18032d57a4bd121b0dfb0faa5"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
