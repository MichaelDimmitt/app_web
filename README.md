Following steps for live view from phoenix docs, trying to build a generator task.

Website: hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html

## Commands
```bash
## step 1
mkdir lib/app_web_web/live/
vi lib/app_web_web/live/thermostat_live.ex

## step 2
## add socket "/live", Phoenix.LiveView.Socket to ...
vi lib/app_web_web/endpoint.ex


## step 3
## generate a live view signing salt, different from phoenix signing salt.
mix phx.gen.secret 32
## add live_view: [signing_salt: ...] to ...
vi lib/app_web_web/endpoint.ex
```
