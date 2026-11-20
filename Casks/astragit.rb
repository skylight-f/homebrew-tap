cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.30"
  sha256 arm:   "7576e901b08eac4c45f5a85e7cce659f25917784bd653c28c4079253f82e3c35",
         intel: "2487dc759b00f7508ae7aa4d2787f8c88cf84766170042456fc24b6bf8d07eca"

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
