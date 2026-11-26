class Notesflow < Formula
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.0/notesflow-v0.2.0-darwin-arm64.tar.gz"
      sha256 "c06a762d7c3afd99ededddffbba4f5e9021fd6fd36474b286242b9f91b0ad04f"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.0/notesflow-v0.2.0-darwin-amd64.tar.gz"
      sha256 "444e1261cc87e5a6af0856f0fcfe371e287d026deadb55dff0b9987eca702228"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.0/notesflow-v0.2.0-linux-arm64.tar.gz"
      sha256 "400d4b8f43cdf70710d89809fbf0b85615b97a17f78d5d5d5688b358f01c8345"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.0/notesflow-v0.2.0-linux-amd64.tar.gz"
      sha256 "ed231912c1628b29da4ed4f8889772a5ec124de2ce6b19d8c0111354a102ae3b"
    end
  end

  bottle do
    root_url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "8d5b8d17a829b06d1427d4b2b0f52b4f814e7dbe6b14ebd7ae6fbf8a2c2a7bd6"
    sha256 cellar: :any_skip_relocation, monterey: "2720b9343ee99126eaa688fcf2ae4ec3f2335042976e86319c1b59dbeac7e1b5"
    sha256 cellar: :any_skip_relocation, arm64_linux: "f32182dd02835831c71e4cb61589f91c4c2bc2269f10ca90de450ff9021ff1aa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6d1c17032abf2889529029df1e2cfc6a65d37bf55b21e5ffcdb58c3ebb75ed24"
  end

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
