cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "92c9769fe90c98f4271ebb8d9594d840a693aff092c0f4aada56dbbf1e29d162",
         intel: "e32ecc68cf3533cc91880d8be7cd7039412e6342cda869f3fd007180bef6462f"

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
