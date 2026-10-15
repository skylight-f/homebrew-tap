cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "99a3f07811ff92cb59416c500b1d6b22a7c57a34a5f7eb09e89432829b51adee",
         intel: "a7e3e76d6dcda686b0d1d014a8ff12627cb04fb72e572c688932b94de21344d0"

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
