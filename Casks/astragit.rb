cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "9de076f4b50bbbf51da6349711fd9ef1c9e4183819c6e9671082decc70d3a609",
         intel: "dc2f193835a451f4e3a9181ec313ad9b68545ad0af92a2e8db9ec6000ac8a692"

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
