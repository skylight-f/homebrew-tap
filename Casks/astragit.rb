cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "5ff9730f0de0dd0e596743a407c022ad31c0eff653febd13e3a770698a7c6235",
         intel: "d66488430354af2e30cd67410a4f596d320f13bdb49c7610888bbae52e58092d"

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
