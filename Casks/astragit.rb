cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.25"
  sha256 arm:   "c9822526b3b23be246cfb3d5d8ebf98ee01d8b3872ff454b7feb97bc71b34b68",
         intel: "763b1c09e4df6cec0175afee817e08e57fde5761d0675c889a3bf195a5895930"

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
