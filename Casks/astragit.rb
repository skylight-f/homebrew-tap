cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.36"
  sha256 arm:   "e77a40876fb75ab655bf435e68315a9d9996077d8201f778fcda82ff2af17b32",
         intel: "7a6d3528208153ecaadf4f3259b2211cca582e626d412b48312edb6caa7aea2a"

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
