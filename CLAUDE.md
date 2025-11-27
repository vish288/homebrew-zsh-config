# Homebrew Tap Repository

## Repository Rules

### Branch Protection (MANDATORY)
- **NEVER push directly to main** - all changes through Pull Request
- Formula updates should be automated via zsh-config release workflow

### Git Workflow
```bash
git checkout -b update/vX.Y.Z
# Update formula
git commit -m "chore: bump zsh-config to vX.Y.Z"
git push -u origin update/vX.Y.Z
gh pr create --title "chore: bump zsh-config to vX.Y.Z"
```

### Formula Updates
Formula is auto-updated when new releases are created in vish288/zsh-config via GitHub Actions.

Manual update process:
1. Get new release SHA: `curl -sL <tarball_url> | shasum -a 256`
2. Update `url` and `sha256` in `Formula/zsh-config.rb`
3. Test locally: `brew install --build-from-source ./Formula/zsh-config.rb`
4. Create PR, merge after tests pass
