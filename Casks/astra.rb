cask "astra" do
  version "0.1.14"
  sha256 "59fa8644e7fa3c6dc36343f4ba60441a1db2f6c02d83bc3e1e08247b0c133ae7"

  url "https://github.com/skylight-f/zeus/releases/download/skylight-v#{version}/Astra-#{version}-arm64.dmg"
  name "Astra"
  desc "Local-first AI development workbench"
  homepage "https://github.com/skylight-f/zeus"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Astra.app"

  uninstall quit: "dev.hypha.zeus"

  zap trash: [
    "~/Library/Application Support/Zeus",
    "~/Library/Caches/dev.hypha.zeus",
    "~/Library/Logs/Zeus",
    "~/Library/Preferences/dev.hypha.zeus.plist",
  ]
end
