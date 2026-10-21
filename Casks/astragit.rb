cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "3f43bb5356a8596742e954f4b9faba79ee3f4108ad7061c3ccdbbdbbc57ccf09",
         intel: "641d08ea9cc96b99a75079c9d3c265d00578a272b1662247866dabbead38d3d7"

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
