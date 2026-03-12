class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.0/grove-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "91a26238e1007ab7ab5732a7777e5bf2190ce947faacb7924fc4b18cc4a7f0b4"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.0/grove-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "776cbb59e51a61e1fcb598962773457ab0754fea17e7f5bb32d726199e3aa9a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.0/grove-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fee9f48970a7fa76e0355fa50ef9db07dc7e9ca3b9395c1204489513217993b4"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.4.0/grove-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf123acf78361c266cf68d4adb54018dd9ddeac12a4cb2d752605c9571e917d7"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
