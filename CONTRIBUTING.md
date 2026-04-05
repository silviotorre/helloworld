# Contributing

This repository prefers small, verifiable contributions over broad changes.

## Minimum Expectations

For every implemented language directory:

- include a `README.md`
- include at least one real example file
- document a real execution or inspection path
- keep the task list aligned with the files that exist

## Adding a New Language

1. Create a new top-level directory named after the language or format.
2. Add at least one example file.
3. Add a `README.md` using [templates/LANGUAGE_README_TEMPLATE.md](templates/LANGUAGE_README_TEMPLATE.md).
4. Update the implemented-language list in the root [README.md](README.md).
5. If the example is runnable in this environment, extend `scripts/smoke-check.ps1`.

## Updating Existing Languages

- prefer fixing documentation before adding extra features
- do not mark tasks as complete unless the files and instructions really exist
- if naming differs from the rest of the repo, explain it in that directory README

## Verification

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/smoke-check.ps1
```

If a toolchain is unavailable on your machine, the smoke check will report a skipped check instead of failing that runtime-specific step.
