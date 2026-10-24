cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "38e7ae9eec8eebe4d2664510f418d351e064aa3227a4b0958591e0d4ed2dd566",
         intel: "47fed59915dfcb6f1f74ae640b131b252303c6974463c20bd1500eef6e5f659d"

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
