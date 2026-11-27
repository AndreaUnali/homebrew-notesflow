class Notesflow < Formula
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.1/notesflow-v0.2.1-darwin-arm64.tar.gz"
      sha256 "9e38784d8eb87fd70f5c826c452c3ed43a7d49fb9904badeab69b1d98a697651"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.1/notesflow-v0.2.1-darwin-amd64.tar.gz"
      sha256 "22cde24f9bd23b15d27103083a3241e4eefa3f5d306796238bceec7bfd41238a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.1/notesflow-v0.2.1-linux-arm64.tar.gz"
      sha256 "facae15fc8c6e9cf374bbd808a5b6aa0616b8491417c2e7088270d6a24858cf5"
    end
    on_intel do
      url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.1/notesflow-v0.2.1-linux-amd64.tar.gz"
      sha256 "b751a9185bd9c610409bcf1233582fadb0e20c1678adf18435d11c25acbb7407"
    end
  end

  bottle do
    root_url "https://github.com/AndreaUnali/notesflow/releases/download/v0.2.1"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "a611c938e24a47f447adbef29da74be7ef6cf033d694450202a6a5ebfc6cb17d"
    sha256 cellar: :any_skip_relocation, monterey: "1524a7cd2b8b588c377f4d7f24c59937173bdd06b6d3dd154c9bf4258e58a773"
    sha256 cellar: :any_skip_relocation, arm64_linux: "29addd071cd424365e72a084cfbe18ebd92754ce3fea839e4a9ab370e2d9a9ca"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "92ab85a6db547db81d7a2184f221d4ca0b4ea8ae4b03a7538f5a46f485b1b328"
  end

  def install
    bin.install "notesflow"
  end

  test do
    assert_equal "notesflow #{version}", shell_output("#{bin}/notesflow --version").strip
  end
end
