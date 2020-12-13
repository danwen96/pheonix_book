defmodule RumblWeb.WatchView do
  use RumblWeb, :view

  def player_id(video) do
    ~r{^.*(?:youtu\.be/|v=)(?<id>[^#&?]*)}
    |> Regex.named_captures(video.url)
    |> get_in(["id"])
  end
end
