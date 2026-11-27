cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.42"
  sha256 arm:   "3b60775bf11ee4928b520265c11d63d068ccea58d28247173f91f5ff0e352072",
         intel: "f55440a114560e7f1fc4f7c0c30e5e1160c765614a7cf7d6ddb520a0cd205f82"

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
