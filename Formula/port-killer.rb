class PortKiller < Formula
  desc "TUI tool to view listening TCP ports and kill processes"
  homepage "https://github.com/vianch/port-killer"
  url "https://github.com/vianch/port-killer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "af7104fc7ea2d08428315c2ae75f0d0ecda9322338ea5d9faf2ba36ed2461740"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "port-killer 0.1.0", shell_output("#{bin}/port-killer --version")
  end
end
