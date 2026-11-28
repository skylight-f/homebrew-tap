cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.43"
  sha256 arm:   "267842dc65d18587506007485b1d8dcf00f5ad8e476d23aee6777bc06c544271",
         intel: "9e818b235fdbd3b9ccaa0d5a6ddaced378948b9fc914ba7f5a01f29172fbceb1"

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
