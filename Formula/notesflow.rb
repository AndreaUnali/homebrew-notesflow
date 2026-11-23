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

  depends_on "neovim"
  depends_on "poppler"

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
