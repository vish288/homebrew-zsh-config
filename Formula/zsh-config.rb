class ZshConfig < Formula
  desc "Professional ZSH configuration with modular structure and lazy-loading secrets"
  homepage "https://github.com/vish288/zsh-config"
  url "https://github.com/vish288/zsh-config/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "94644d7f9e71a4eefc17901080940e80498480863a0a7ffe876d43e2d4400ddd"
  license "MIT"
  head "https://github.com/vish288/zsh-config.git", branch: "main"

  depends_on "zsh"
  depends_on "mise"
  depends_on "fzf"
  depends_on "zoxide"

  def install
    # Install configuration files to share directory
    (share/"zsh-config").install Dir["*"]
  end

  def post_install
    ohai "zsh-config installed to #{share}/zsh-config"
    ohai "Run 'zsh-config-install' to set up your configuration"
  end

  def caveats
    <<~EOS
      To complete installation, run:
        zsh-config-install

      Or manually:
        cd #{share}/zsh-config && ./install.zsh

      This will:
        - Back up existing zsh configuration
        - Create symlinks for .zshrc, .zprofile, .p10k.zsh
        - Install Oh My Zsh and plugins if missing

      To uninstall:
        cd #{share}/zsh-config && ./uninstall.zsh
    EOS
  end

  test do
    assert_predicate share/"zsh-config/zshrc", :exist?
    assert_predicate share/"zsh-config/install.zsh", :executable?
  end
end
