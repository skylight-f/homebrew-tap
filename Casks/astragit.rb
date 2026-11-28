cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.44"
  sha256 arm:   "1e659795dc69763bc31817d6fccda55d7ea743d29733d40e0117bb6664619210",
         intel: "738954afe2521847f387dcb044b135c69f198fb6c6f49d125c86775d21c529fd"

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
