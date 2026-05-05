class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260505.123120.0-sha.359da92f"

  on_macos do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "e5693154f9ddff1f1d0dd6a61fc7de166b24353bae6ca110f0c3e49f3be7d39e"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "f57c2677a34c451bc213ee046d8ebb1e2b0c92e2ecb17b8f6b630c125cd81d98"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "13030388ad973e4365242cc0ed307fb8492f77a9c04ccd2ce681c06b0691c2b3"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "e72211f7de04ca0c8edc9e6b7fee305f39e59c41dad635064f0f839e8697be81"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end
