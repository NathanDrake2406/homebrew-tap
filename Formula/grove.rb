class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c484aa761777cd9da2d2164e01d4db1b2f5314c3a6327647817737f7cf75f86"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e567e26a780da0179054eb872b6ca4fedb24bd761f92019bdb98c430c28e7d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69df26fdcff8cf7a34d15e9fe869bd301cf1bb1294ae1147c1c27422ab616eed"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb5cfad1d0545166fa5db100688aa4a7ff3b446dbf1b5a44c314c3ec40074e1c"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
