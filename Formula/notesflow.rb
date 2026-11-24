class Notesflow < Formula
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.1/notesflow-v0.1.1-darwin-arm64.tar.gz"
      sha256 "9db7316a2bb6e805dc8600a67519faf8fe06be0629e30a9de986ba2043b3d3dd"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.1/notesflow-v0.1.1-darwin-amd64.tar.gz"
      sha256 "998325aaf1b8699ab9f01ff6dd493367ebb5e35a7a862487e9c868e799181c23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.1/notesflow-v0.1.1-linux-arm64.tar.gz"
      sha256 "649ec15d71e024a7a0fdea88fd4c38f52d61fbcb9d32df7e5a43c529d50ac85a"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.1/notesflow-v0.1.1-linux-amd64.tar.gz"
      sha256 "3f610b38009eb705d237f73807476499c93b5c005842f175dca4fde87969c256"
    end
  end

  bottle do
    root_url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "93e55d8ada3dd65ff6b6f3635a64669f1da88c1b649c6d1d2bd38918f2ceb552"
    sha256 cellar: :any_skip_relocation, monterey: "d7b0af27a34054363e23c43f0ff249acbd3b73301fa699d9f6da5e012aa9a128"
    sha256 cellar: :any_skip_relocation, arm64_linux: "9a791f38f63cc97f957104da3017b4c1b27a53e098bd0e0e5eaf945ddb444e85"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "40286d5c3d611c1bf88dfd4be7dc8a6049f4cf46b8ce7d0977c3497fc2f4704f"
  end

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
