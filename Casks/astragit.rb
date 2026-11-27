cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.41"
  sha256 arm:   "1437cdc2f15f6304d53362e1e0ef61cf9034e833c7716b61948ed9a7da21b1ea",
         intel: "0bd65cae1c5fd5554abae01804f85e627c82eabda6be72e4138cebd162592f4f"

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
