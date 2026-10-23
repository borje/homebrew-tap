class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.2/restoric-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "750979ed79d1ad4f45288e7f38890c75350d4fb9eba4023a26ba17e7076e7b70"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.2/restoric-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "10190e1facff8c342ecc7795a6927532dda57ae9b7e916e99a063fc2bf16b85c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.2/restoric-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f28d8f47d4d012f11624d56d01545ed52d126e1e972160932f8a08e69382c5a9"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.2/restoric-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c29b6375565eaae052ce7d85dfb9c56ca68d52a3e191b68c747300b8c915001c"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
