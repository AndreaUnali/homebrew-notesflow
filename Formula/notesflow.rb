class Notesflow < Formula
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.2/notesflow-v0.1.2-darwin-arm64.tar.gz"
      sha256 "0633db1070745241222cb7e5733b5290bb73e19579f6b34f3386ed8eab4b28a9"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.2/notesflow-v0.1.2-darwin-amd64.tar.gz"
      sha256 "615b9fb128b5fc313d45dcca3dfeb6bb0120b5a9a59936f6292a6ab20575efff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.2/notesflow-v0.1.2-linux-arm64.tar.gz"
      sha256 "fc54df2889b83cc4f3ca109d706ac1ebe779de9928d9bf233d86c332dfbf4a75"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.2/notesflow-v0.1.2-linux-amd64.tar.gz"
      sha256 "4a25b5e52cfd3a378db854e492bd8cbc673eec1ad7e4f757ca49c1a139042a7c"
    end
  end

  bottle do
    root_url "https://github.com/AndreaUnali/notesflow/releases/download/v0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "327c6d18ae577f6113c445918e9e4c6e86420df04fd19cdcc3e13a6b9e0262e4"
    sha256 cellar: :any_skip_relocation, monterey: "a9a7f287a9170e2b32f9f0be814b6a27114e29c885a771813e4a3fa50c5c19c6"
    sha256 cellar: :any_skip_relocation, arm64_linux: "1f543c406f3bf00bb38fd1976e74bdfe0871dc9c8465a606fda07c6ab2fba0e0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1b14bb09d20b1cfa3b91aa15a0a94a33495bdd806944d9537b9bcc9a9bb6d4ae"
  end

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
