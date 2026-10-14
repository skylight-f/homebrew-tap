cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "77e3ec8589f6343022f3fa36f220486480a1d3659e91f13e02d150c1cd1dc8be",
         intel: "35164577cb78b68d2bbbb600c41c54efa1b486fa8a8046c09102192ba02ac12d"

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
