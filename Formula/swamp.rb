  class Swamp < Formula
    desc "AI Native Automation CLI"
    homepage "https://swamp.club"
    version "20260312.123456.0-sha.abcd1234" 

    on_macos do
      on_intel do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
        sha256 "PLACEHOLDER"
      end
      on_arm do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
        sha256 "PLACEHOLDER"
      end
    end

    on_linux do
      on_intel do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
        sha256 "PLACEHOLDER"
      end
      on_arm do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
        sha256 "PLACEHOLDER"
      end
    end

    def install
      bin.install "swamp"
    end

    test do
      assert_match "swamp", shell_output("#{bin}/swamp --version")
    end
  end
