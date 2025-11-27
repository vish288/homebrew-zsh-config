class ZshConfig < Formula
  desc "Professional ZSH configuration with modular structure and lazy-loading secrets"
  homepage "https://github.com/vish288/zsh-config"
  url "https://github.com/vish288/zsh-config/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "2ed403d16d84dfdbbcc778284ef1f544f3cf310269060f98730d0c85433e1ddd"
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
