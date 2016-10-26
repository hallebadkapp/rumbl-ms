defmodule Rumbl.WatchView do
  use Rumbl.Web, :view

  def player_id(video) do
    ~r{^.*(?:youtu\.be/|\w+/|v=)(?<id>[^#&?]*)}
    |> IO.inspect(label: "Watch View 1")
    |> Regex.named_captures(video.url)
    |> IO.inspect(label: "Watch View 2")
    |> get_in(["id"])
    |> IO.inspect(label: "Watch View 3")
  end

end
