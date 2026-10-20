cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "fa2bb80636b3aa31647a75caa03a1a89c67fd3bbbc4e9d8c6ce7b7d09fae9c53",
         intel: "afb45a1f2db092c90d315c034d008c06eeb13d4aaf9dc88b8da989126a1c52e9"

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
