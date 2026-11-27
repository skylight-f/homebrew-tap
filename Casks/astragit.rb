cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.40"
  sha256 arm:   "bae2143d2132358734cf90a62053d4bf87a9b8b4fed1c8b9af1781ca357e5d2e",
         intel: "9706bf113d238c00f144742b962779c37721df381ab90b51fe4b175353cf41fe"

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
