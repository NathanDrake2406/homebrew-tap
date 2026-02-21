class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.0/grove-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "16efa3cea409593fcc22e834409fa6e5f53f4ad34011a951896b19aebe897e79"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.0/grove-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9c0451e2a3ce4acc64341d466afaa4124b22aa734ddc35f34533d26c0bf42c38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.0/grove-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3231cc7e9b70ad6aa006bc2f030c59c6a78a6309da99320b86340641c50c3832"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.2.0/grove-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb84e860400f3f98b3b6eaa0171ec26134692ca72359947586b92e4b2847cbef"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
