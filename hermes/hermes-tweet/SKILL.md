---
name: hermes-tweet
description: Uses Xquik from Hermes Agent for X research, monitoring, and approval-gated actions. Use for X/Twitter search, account reads, trends, extraction, monitors, drafts, or explicitly approved account actions.
license: MIT
---

# hermes-tweet

> Hermes Agent X/Twitter plugin workflow
>
> Search, read, monitor, and take explicitly approved X/Twitter actions from Hermes Agent.

## What This Is

`hermes-tweet` helps Hermes Agent users install and operate the Hermes Tweet plugin:

- `tweet_explore` discovers catalog-listed Xquik endpoints without an API call.
- `tweet_read` calls catalog-listed public read endpoints.
- `tweet_action` handles private reads and write-like operations behind an
  explicit environment gate and user approval.

Xquik is an independent third-party service. Not affiliated with X Corp.
"Twitter" and "X" are trademarks of X Corp.

## Install

```bash
hermes plugins install Xquik-dev/hermes-tweet --enable
```

If the plugin is already installed:

```bash
hermes plugins enable hermes-tweet
```

## Configure

Set the API key on the Hermes runtime host:

```bash
export XQUIK_API_KEY="YOUR_XQUIK_API_KEY"
```

Enable private and write-like operations only for an approved workflow:

```bash
export HERMES_TWEET_ENABLE_ACTIONS=true
```

Without `XQUIK_API_KEY`, only the no-network `tweet_explore` tool is available.
After changing the environment, reload the active CLI or restart the gateway.

Never commit `.env` files, API keys, cookies, auth tokens, screenshots, or chat
exports.

## Use

1. Confirm the plugin is enabled with `hermes plugins list`.
2. Use `tweet_explore` to find a catalog-listed endpoint and method.
3. Use `tweet_read` only for public read-only endpoints.
4. Before `tweet_action`, state the endpoint, payload, account, and side effects.
5. Get explicit approval and confirm the action gate is enabled.
6. Report failures without guessing endpoints or retrying through another route.

## Examples

```text
Use tweet_explore to find tweet search, then summarize recent posts about a product launch.
```

```text
Draft 3 replies. Do not call tweet_action until I approve one.
```

```text
Find the read route for this keyword and report notable posts without actions.
```

## Related

- Repository: <https://github.com/Xquik-dev/hermes-tweet>
- PyPI package: `hermes-tweet`
- Tools: `tweet_explore`, `tweet_read`, `tweet_action`
- Authenticated read key: `XQUIK_API_KEY`
- Private and write-like operation gate: `HERMES_TWEET_ENABLE_ACTIONS=true`
