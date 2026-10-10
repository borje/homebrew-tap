class Restoric < Formula
  desc "Browse and restore a restic repository by time, anchored on a folder"
  homepage "https://borje.github.io/restoric/"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.0/restoric-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "38f406d458bf82661c61b4851a77c0bf7a4ae475ebc0397a5c3b1a1dfccf36af"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.0/restoric-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "34b93acdfb92a5257a2fbc8af05c516e85268552c17a11f985324b55c2f7d585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/borje/restoric/releases/download/v0.1.0/restoric-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1e378bb11fc18d28770c60987360ab3d117efe427dc9cda0326f5f6168475e7"
    end
    on_intel do
      url "https://github.com/borje/restoric/releases/download/v0.1.0/restoric-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65b1c95ae5501c3ceaff7cd056a3d639b7ebdd5eb8723901dbb01b73e0f506a4"
    end
  end

  def install
    bin.install "restoric"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/restoric --version")
  end
end
