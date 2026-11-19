cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.26"
  sha256 arm:   "425a840c0d9e4114b071d9fbdc8530d67492a537ef637a2e512e10a8b87c5fd0",
         intel: "aca7de7d233b83ac2558dbf38a52fd7c5837f4596d5a781e7ba56e087d1f13d2"

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
