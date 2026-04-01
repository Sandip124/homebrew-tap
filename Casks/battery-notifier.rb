cask "battery-notifier" do
  version "4.2.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
