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

## step 4
## assets/js/app.js 
import {Socket} from "phoenix"
import LiveSocket from "phoenix_live_view"

let liveSocket = new LiveSocket("/live", Socket)
liveSocket.connect()

## step 5
use connected to ... maintain state when socket is active.

## step 6
lesson: using ~L""" """ or .leex templates for live view they are designed to minimize the amount of data sent over the wire by splitting static from dynamic parts and also tracking changes.

```

