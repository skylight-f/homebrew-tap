cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "175616b54b262aadb69df1e623bf6c3867470d15b81a68367744a9fa312b94a8",
         intel: "a141d3dc7ddf7594d02bbe030f18e4ce97b54fb734904689cf8f81875dba73a3"

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
