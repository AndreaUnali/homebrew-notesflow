cask "notesflow" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.1.0"
  sha256 arm:          "66d8284111dcd0965a7b794f366c3fa84f4614ac91619cde82bb9fae9abc5858",
         intel:        "ece796e824bdbd025f568b6334fb1542ad50b12230ffce00d2a62ee1c4354153",
         arm64_linux:  "98ea93a6188b91140401d3b7eb16f89c75f8d98d5a508163c7101bb3c85a5aae",
         x86_64_linux: "3bfa7c99fbf282071134e4763bce421050065b3186fafd620de7d5e60cf49eaa"

  url "https://github.com/AndreaUnali/notesflow/releases/download/v#{version}/notesflow-v#{version}-#{os}-#{arch}.tar.gz"
  name "Notesflow"
  desc "Terminal workspace for LaTeX notes"
  homepage "https://github.com/AndreaUnali/notesflow"

  binary "notesflow"
end
