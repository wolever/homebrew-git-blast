# Homebrew formula for git-blast
# Install with:
#     $ brew install wolever/git-blast/git-blast

class GitBlast < Formula
  desc "git-blast: show git branches sorted by last commit date Raw"
  homepage "https://github.com/wolever/git-blast/"
  url "https://github.com/wolever/git-blast/archive/v0.3.tar.gz"
  sha256 "0634b37bc36e13e12fdda3166b8fd95d4124affea14deabbb9ee2af01e04e11e"

  def install
    bin.install "./git-blast"
  end

  test do
    system "git", "init"
    touch "foo"
    system "git", "add", "foo"
    system "git", "commit", "-m", "initial"
    system bin/"git-blast"
  end
end
