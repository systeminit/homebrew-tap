class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260327.235335.0-sha.0c993a65"

  on_macos do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "a2da677cd717a11230b755f62b0a0d1da7f08ad45a2fb5f131a85c333e36c468"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "840a6290867e59552948692ce363d0fabb6ffcd7db82b3fdf8bcaffe25f9b650"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "5218e8c51b6c51d44ab47eb875e08a897ac96e7d4e9221449033516a2a80f1d2"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "4ec1377087773fd5a92a476547df41c5655477952e9644461f1dea808c0a57ce"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end
