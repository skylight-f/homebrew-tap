cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.21"
  sha256 arm:   "7ab893b84397516f43973684a0c4ab4fde21b822600d623f7d24528b8c224c11",
         intel: "9a5264b93d7830c71955fee900a8d07fec94501bf1589a15cd734c6c51c5f104"

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
