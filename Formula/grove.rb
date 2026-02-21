class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d5519955826d6466df382003b2f04053da6796f5a10d4237e2d05afbad02d08"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "3b9ba21ce2ccf0ad4fd71a96d7164b4ee1c9959c866def91555b3030a2a1ea78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7983d014a2425eb7b51481a69a9583320cf6997e1826b1f346df2af4b6520574"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.1.0/grove-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d92cf72414bbef6c2c01d152fe6c67223787aede05994dd1c3e4678a914ad91d"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
