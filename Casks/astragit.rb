cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "91b5ad32fa292481441c34f381e66259439b202f9a3443939d7c7ccc0c05a21b",
         intel: "742bca1ae2936d7938e4ea3da67ff7637e543cba3d475649d05de45f798c98e7"

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
