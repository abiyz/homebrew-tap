class Abiyz < Formula
  desc "Command-line tool for Abiyz Cloud"
  homepage "https://abiyz.com"
  url "https://registry.npmjs.org/abiyz/-/abiyz-0.2.7.tgz"
  sha256 "ee8325ab41affbc6e65c58495e7d93264a9fb58c9dac7c0ed96c55329181272d"
  license :cannot_represent

  depends_on "node@24"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/abiyz --version").strip
  end
end
