cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.38"
  sha256 arm:   "58592d7f5a89f3422281181f8b495b2fa2889cc5dcb8ba68197e251eb6c66ae4",
         intel: "e0b24d811b81bb2a82a573763875ee671b924c9377016903df5f87caa6c5ae55"

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
