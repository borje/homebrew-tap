class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.1/restoric-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a666a75fdd093aea94f9e0287e7741d3854ab68cb8334949f59a5cb9d2be94ee"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.1/restoric-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "2df2712dea0eab6bc0b7b42958ed3a52e45c68c0440270988b4a48355ae71b34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.1/restoric-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f7072d12eaad96862b3661143ec03c35c0e52969210a13bfe5e074838f91b8a"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.1/restoric-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cd3e3c27e6f49dc77b29b9483328e4b8dabcbb78ebc5afa5be116c684ccd9ea"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
