class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.5/restoric-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "08b1888801c212a474032e7be5980225a9c0b28280f27cac1781c182b8789483"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.5/restoric-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "803aa4fa269cb1372f317357e75c109cc51de31e6c6c10e00344ce9b3b5b1eea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.5/restoric-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73a09825e53fc9b51cae3fc888cf89febc7face91658aeff4289e047464387b2"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.5/restoric-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea54a89033440b5a9758f099ffc9ec8693a7c88617df194cf6391fd0d1500cd0"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
