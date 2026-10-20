cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "d2a6652b5ef5576afc130be0a726a30b25d4f0814d67143b7e26627237c80176",
         intel: "fe4383e0a59da9ee3331f223843221ffe4ff6ac03afc52d57a7e6b892145a058"

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
