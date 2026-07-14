class PortKiller < Formula
  desc "TUI to view listening TCP ports and kill processes"
  homepage "https://github.com/vianch/port-killer"
  url "https://github.com/vianch/port-killer/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7cce6c4472477e1852895d2aeb57546dccd88ab08a4d70c12964336de21e7bfc"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "port-killer 0.2.0", shell_output("#{bin}/port-killer --version")
  end
end
