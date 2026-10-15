cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "4da1eca28ffc468c21df68aef095fb308258285255768ecc0e23cdb8641e385a",
         intel: "5f0a4682a35563114417800cd3860266473334a45865f4d4a539f2f7673fc939"

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
