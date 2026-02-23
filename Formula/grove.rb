class Grove < Formula
  desc "Cross-worktree conflict intelligence for git"
  homepage "https://github.com/NathanDrake2406/grove"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.0/grove-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "3cf0a1c46f3f8253d2d72fcae62dadbf8cd78512623ad4f24565890764bc7616"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.0/grove-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "dfd95777b652e1a4422505fd77e6cb6ce31f45dfbeffbf3c0d2767b7dcd6d6a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.0/grove-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f06cb5d7ff1a942257c8032a85583542ecf0ff09e1a42a246201984b6c7e428"
    else
      url "https://github.com/NathanDrake2406/grove/releases/download/v0.3.0/grove-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "735a71349ee0d91d928e4a89e867892868ff28745e09d4792e9a11fcca01a015"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
