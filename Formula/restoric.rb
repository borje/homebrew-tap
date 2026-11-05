class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.4/restoric-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "908a04cc1dad025b7e9215453d8bb51cd6a54e7b7468efa808cc8c819aa04a35"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.4/restoric-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "b0bba4d495d199a26f75639679c2a3caf2814f9ef21ada126a189861c562daf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.4/restoric-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad5c317eaa3b6c23f75ff8860166d3725938a6321b79bb28c0b54fba05a67daa"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.4/restoric-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "783d35f0d753544ce17abc6af1c4220826802b2a36374532fe94ed6650c7b292"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
