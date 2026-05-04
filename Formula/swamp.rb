class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260504.152403.0-sha.60829024"

  on_macos do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "acb43588ba43aacf935978e336dee2a093122bb8d611cbdc446fb03c522580c7"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "ffd25dcfa8926429155edf4767c34bb0ecb9665d8596f559f1a84965248e6efc"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "906d845e695c641e6a9ee878ce08d1971d2597e2ab286d1312b73ba6861630b8"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "12f0f250df62521a02a8d6609eea1beb0333854a3cbfdd691ed7463022d2b039"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end
