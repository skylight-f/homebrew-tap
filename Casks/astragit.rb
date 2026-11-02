cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "41f2bf4b861a31ff3b293e2df750fef00ff04b2a064e99309086146ae68124ed",
         intel: "a08daed4c25704a09700b251b601c61bedcb6b9b1c1b38b5792b23e5ff40c416"

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
