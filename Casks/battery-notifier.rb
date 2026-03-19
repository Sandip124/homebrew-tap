cask "battery-notifier" do
  version "4.0.1"
  sha256 :no_check # Updated automatically by CI

  url "https://github.com/Sandip124/BatteryNotifier/releases/download/v#{version}/BatteryNotifier-osx-arm64.tar.gz"
  name "BatteryNotifier"
  desc "Cross-platform battery monitoring and notification app"
  homepage "https://github.com/Sandip124/BatteryNotifier"

  depends_on macos: ">= :ventura"

  binary "BatteryNotifier"

  zap trash: [
    "~/Library/Application Support/BatteryNotifier",
    "~/Library/LaunchAgents/com.batterynotifier.plist",
  ]
end
