# GitLocalize Docs

Source for the [GitLocalize Help Center](https://docs.gitlocalize.com), built with
[Mintlify](https://mintlify.com).

## Structure

| Path | Contents |
| --- | --- |
| `docs.json` | Site config: navigation, theme, redirects, OpenAPI source |
| `*.mdx` | One file per documentation page, at the repo root |
| `api-reference/` | API overview and endpoint pages, nested by resource |
| `images/` | Screenshots and other images (flat, kebab-case) |
| `Justfile` | Local commands — run `just` to list them |

Documentation pages are **flat**: the filename is the URL, so `syncing.mdx` serves at `/syncing`.
The sidebar sections — Get started, Set up, Translate, Manage — exist only in the `navigation`
block of `docs.json`; they are a reading order, not a directory layout.

That separation is deliberate. Regrouping the sidebar, renaming a section, or moving a page from
one section to another costs nothing, because no URL changes. Only renaming the file itself does,
and that needs a `redirects` entry.

`api-reference/` is the exception and stays nested, because endpoint pages are grouped by the
resource they act on and their names (`list`, `get`) only make sense under one.

## Local preview

```bash
just dev            # preview on http://localhost:3000
just dev 3111       # ...or on another port
```

Recipes shell out to `npx mint@latest`, so nothing needs installing first. Run `just` to list
everything available.

## Writing

Pages are MDX. Every page needs frontmatter with a `title` and a `description`:

```mdx
---
title: "Syncing"
description: "How GitLocalize keeps a connected repository in step with GitHub, and why a large initial sync takes hours."
---
```

These are reference docs, not a help center. A page is named after its subject — a noun phrase, not
a question — and opens by saying what that subject *is* before giving any procedure. `sidebarTitle`
is unused: titles are short enough to serve as nav labels.

A few conventions worth keeping:

- Prefer tables to accordions for anything a reader scans or searches. Collapsed content can't be
  reliably Ctrl-F'd.
- Reserve `<Steps>` for genuinely ordered procedures.
- Describe a behaviour once and link to it rather than restating it. The segment model lives in
  [how-it-works.mdx](how-it-works.mdx); other pages link to `#segments`.

A new page is only reachable once it is listed in `navigation` in `docs.json`. Moving or renaming a
page means adding a `redirects` entry for its old path.

Images live flat in `images/` with descriptive kebab-case names, referenced by absolute path from
the repo root:

```mdx
<Frame>
  <img src="/images/github-workflow.png" alt="Describe what the screenshot shows" />
</Frame>
```

## Terminology

The thing you connect is a **repository**, on GitHub and on GitLocalize alike. Don't reintroduce
"project" — it used to mean the GitLocalize side of a connected repository, and using both nouns
makes sentences like "add a repository to create a project" unavoidable.

A **segment** is a translatable chunk of a file, and a segment in a translation is **linked** to the
source segment it translates. An unlinked one is a **conflict**. These three terms carry most of the
product's behaviour — use them precisely.

## API reference

Endpoint pages under `api-reference/<resource>/` are rendered from
[api.gitlocalize.com/openapi.yaml](https://api.gitlocalize.com/openapi.yaml), which `docs.json`
points to in its `api.openapi` field. Changes to the spec show up on the next docs build — no
commit needed here (the spec itself is generated from `gitlocalize/proto`). Adding a *new*
endpoint does require a new page:

```mdx
---
title: "Endpoint name"
openapi: "GET /v1/some/path"
---
```

...plus an entry in `docs.json`. Endpoints are grouped by the resource they act on
(`api-reference/repositories/`), so a new resource means a new folder and a new navigation group.

## Deployment

Deploys are handled by the Mintlify GitHub App: every push to `main` publishes automatically.

## Checks

```bash
just check          # validate docs.json and every internal link
```
