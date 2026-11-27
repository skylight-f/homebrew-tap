cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.39"
  sha256 arm:   "1076b366c11c2fa93d00294ba6955e592cc5c848dcf35dc5e2d6114006715034",
         intel: "00568094a7318e0761b8ad62215dcba356254831605ec2006e586406872a28f8"

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
