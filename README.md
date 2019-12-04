Following steps for live view from phoenix docs, trying to build a generator task.

Website: hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html

If you get stuck check chris mccords demo implementation:
https://github.com/chrismccord/phoenix_live_view_example/

## Commands that need to be implemented one time.
```bash

## step 0

## step 1
## add socket "/live", Phoenix.LiveView.Socket to ...
vi lib/app_web_web/endpoint.ex

## step 2
## generate a live view signing salt, different from phoenix signing salt.
mix phx.gen.secret 32
## add live_view: [signing_salt: ...] to ... config/config.exs
 config :app_web, AppWebWeb.Endpoint,
   live_view: [signing_salt: "sM/h9HbXVlCWtQ2B5f88DYjDtfO4630C" ],

## step 3
## assets/js/app.js 
import {Socket} from "phoenix"
import LiveSocket from "phoenix_live_view"

let liveSocket = new LiveSocket("/live", Socket)
liveSocket.connect()

## step 4
## assets/package.json
    "phoenix_html": "file:../deps/phoenix_html",
    "phoenix_live_view": "file:../deps/phoenix_live_view"
```
Hookup a router based live view using 'live'.
1) lib/app_web_web/router.ex:  
     import Phoenix.LiveView.Router
     scope "/", AppWebWeb do
     ... 
       live "/thermostat", ThermostatLive


Hookup an inline template live view using live_render.
Hookup a controller live view using live_render
