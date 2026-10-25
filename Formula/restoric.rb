class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.3/restoric-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "1ba42d84ae312c18435a91ba30a761c218b970f265479eb0006e3929ebc8cbf3"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.3/restoric-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "a07f959d72317d00eb2c282b8914df6320558e38e9011edda5e279ebabb2d8aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.3/restoric-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fa34be08fd6aec5864e83a1869a128c3c25a58fecefd38708034563b7ec1e41"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.3/restoric-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46f529281e6a93648329fa00312735c1592a34dedc81361156a1bca01cd5be9a"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
