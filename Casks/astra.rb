cask "astra" do
  version "0.1.32"
  sha256 "c50ac419052020274949aa2b3315248f43e8bb34ed4e112cfdc8645c5140baf2"

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
