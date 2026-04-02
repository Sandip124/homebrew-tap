cask "battery-notifier" do
  version "4.2.1"
  sha256 "3a6c75d9158684553053f72f19dd3f0dd5f181e70a1721629c6101db54176229"

  url "https://github.com/Sandip124/BatteryNotifier/releases/download/v#{version}/BatteryNotifier-osx-arm64.zip"
  name "BatteryNotifier"
  desc "Cross-platform battery monitoring and notification app"
  homepage "https://github.com/Sandip124/BatteryNotifier"

  depends_on macos: ">= :ventura"

  app "BatteryNotifier.app"

  zap trash: [
    "~/Library/Application Support/BatteryNotifier",
    "~/Library/LaunchAgents/com.batterynotifier.plist",
  ]
end
