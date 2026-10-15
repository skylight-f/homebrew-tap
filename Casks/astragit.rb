cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "5cb2bb469642fa237d54f80b8a7c7d5c396a677389dd8e7320d14ddf470af7a4",
         intel: "49464900ebffe942d5211d58107d2d27dc3c4a2157e64aefd1be7a7c39cfcb62"

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
