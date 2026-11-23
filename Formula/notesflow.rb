class Notesflow < Formula
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.0/notesflow-v0.1.0-darwin-arm64.tar.gz"
      sha256 "66d8284111dcd0965a7b794f366c3fa84f4614ac91619cde82bb9fae9abc5858"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.0/notesflow-v0.1.0-darwin-amd64.tar.gz"
      sha256 "ece796e824bdbd025f568b6334fb1542ad50b12230ffce00d2a62ee1c4354153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.0/notesflow-v0.1.0-linux-arm64.tar.gz"
      sha256 "98ea93a6188b91140401d3b7eb16f89c75f8d98d5a508163c7101bb3c85a5aae"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.0/notesflow-v0.1.0-linux-amd64.tar.gz"
      sha256 "3bfa7c99fbf282071134e4763bce421050065b3186fafd620de7d5e60cf49eaa"
    end
  end

  bottle do
    root_url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "1d62d6acd2faf132e849c763006837030a159e68ddfc8c50c245faeee08bc687"
    sha256 cellar: :any_skip_relocation, monterey: "03831b993741fefa5d2259a3bf9ea578b5b2e5af24a88a791b1f2043ce03140c"
    sha256 cellar: :any_skip_relocation, arm64_linux: "4116f308469f1fb7f72a44caaeb29eef62a1554d0d55cf5b9c030fc1c3677ea8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3ca3b6d8f5a1c9d1d1e08615b38e62ca57120f2e4c458b8d8f53a1fbd92669f3"
  end

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
