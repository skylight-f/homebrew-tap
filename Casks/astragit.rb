cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "3c3dcd65164b575e39dc24113cc812649789cfb4027d416ec1e222f89deb5fbf",
         intel: "986975ba4cff749a2ced81871b091ca1f753652b19527635c829b232dceb9578"

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
