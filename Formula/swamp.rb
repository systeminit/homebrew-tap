  class Swamp < Formula
    desc "AI Native Automation CLI"
    homepage "https://swamp.club"
    version "20260312.232506.0-sha.dfa7c4e9" 

    on_macos do
      on_intel do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
        sha256 "93ef919318dcbc4d2efc8a470283c47bf8405dddd9831255afe2a1a442d3bf51"
      end
      on_arm do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
        sha256 "6c6f40ceb6644f93ae1228f2825236fdb695bd5417ac5b42cddd55b0a35d81b1"
      end
    end

    on_linux do
      on_intel do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
        sha256 "302355dc7aa850be46e178d12d9427300c0395d950035588222bcc4f32029fd9"
      end
      on_arm do
        url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
        sha256 "d048331a4a33be7412b16492a7adc149a0eaac44e125d8da67df180af30aec58"
      end
    end

    def install
      bin.install "swamp"
    end

    test do
      assert_match "swamp", shell_output("#{bin}/swamp --version")
    end
  end
