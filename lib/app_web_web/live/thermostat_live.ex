defmodule AppWeb.ThermostatLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    Current temperature: <%= @temperature %>
    """
  end

  def mount(%{id: id, current_user_id: user_id}, socket) do
    temperature = Thermostat.get_user_reading(user_id, id)
    {:ok, assign(socket, :temperature, temperature)}
  end
end
