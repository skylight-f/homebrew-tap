cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.45"
  sha256 arm:   "99a15154e78bd930a3e590b75924e058dd0e0d674f21ba60bc750f0048c78ed3",
         intel: "834f02eb5ee5709598630f650588d56eec29a57376a0e330e98907ed1544360c"

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
