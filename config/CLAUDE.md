## Git

- Always use git worktrees.
- **Never amend commits or force-push.** Always create new commits instead. Amending commits to add GPG signatures if the commit is unsigned is ok.
- If a commit has already been pushed, add a follow-up commit rather than rewriting history with `--amend` or `rebase`.

## Commit Signing

The user has a YubiKey configured for GPG commit signing. **Every `git commit` for the smartcontractkit org requires a physical touch on the YubiKey.** Because of this:

- **Stage all related changes before committing** so the user only needs to touch the YubiKey once.
- **Warn the user before running `git commit`** so they are ready to touch their YubiKey.
- Prefer `git commit --no-verify` to avoid pre-commit hooks running lengthy tests, which can cause the YubiKey touch prompt to time out.
- Do not ever create unsigned commits, as these will fail CI checks and require manual fixing.

## Pull Requests

- **Always write the PR body to a temporary file** (e.g. `/tmp/pr-body.md`) and use `gh pr create --body-file /tmp/pr-body.md` instead of passing the body inline with `--body`. Multiline strings in the terminal get garbled.

## Comments

- Keep comments on the shorter side, and keep them for documentation purposes of what the function or code deos. Don't comment the justification for a change. Just make the change.

## Testing

- Always test your changes.
- Update existing unit tests or write new tests if they don't already exist.
- If you are modifying an untested piece of code first write tests for existing behavior and commit those first.
