class Swamp < Formula
  desc "AI Native Automation CLI"
  homepage "https://swamp.club"
  version "20260322.110605.0-sha.f8ab7844"

  on_macos do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/x86_64/swamp-#{version}-binary-darwin-x86_64.tar.gz"
      sha256 "7f84bff3e1462465e5c013963fda7ea909102cbb91d63c05c3d8744538ca78d5"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/darwin/aarch64/swamp-#{version}-binary-darwin-aarch64.tar.gz"
      sha256 "d71856ce543dbbd21b6f1f646f25a5712d1edb6765575a697e538742a4e3df32"
    end
  end

  on_linux do
    on_intel do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/x86_64/swamp-#{version}-binary-linux-x86_64.tar.gz"
      sha256 "d0f2cd1584fe7db37078aa489fdf401e6ad6729031fceb43d4fa724609ea8abb"
    end
    on_arm do
      url "https://artifacts.systeminit.com/swamp/#{version}/binary/linux/aarch64/swamp-#{version}-binary-linux-aarch64.tar.gz"
      sha256 "65c746cae8260b5244ad93270a8cbd745dcb56dcb3dbb954b74950d727051cf5"
    end
  end

  def install
    bin.install "swamp"
  end

  test do
    assert_match "swamp", shell_output("#{bin}/swamp --version")
  end
end
