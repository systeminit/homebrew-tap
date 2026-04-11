class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260411.215646.0-sha.25d3839b"

  on_macos do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "84ef3adc1527e7ddd80e53755108be9dc59d8ee70ce6777eac95f5d2fb35497d"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "a6888b4ed7850403aed7eeaf01f4eaf2689f28f2da7546a78146ed0512302328"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "ddbf915bb5e13b89afb3333280126a88fd6cc76c6acff09661cb6fa0a2caca1c"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "36bc31845981b586d173ec34645b1b6ccbb42ca6ec615aa4ea012c0fa9dc49f9"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end
