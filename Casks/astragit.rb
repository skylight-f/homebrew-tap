cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.22"
  sha256 arm:   "e0da2d954524082b968bfbd7b9848367d88a9715aba6ac6d5b8c43b627703fd3",
         intel: "981b25fd8c2b5c0d2889d3652fa81ba76a0636b41866d2625dd597c8ff331206"

  url "https://github.com/skylight-f/AstraGit/releases/download/v#{version}/AstraGit-#{version}-#{arch}.dmg"
  name "AstraGit"
  desc "Git workbench with AI commit messages and multi-repository commits"
  homepage "https://github.com/skylight-f/AstraGit"

  depends_on macos: :ventura

  app "AstraGit.app"

  uninstall quit: "com.astragit.desktop"

  zap trash: [
    "~/Library/Application Support/AstraGit",
    "~/Library/Caches/com.astragit.desktop",
    "~/Library/Logs/AstraGit",
    "~/Library/Preferences/com.astragit.desktop.plist",
  ]
end
