defmodule LiveElementExample.Features.TodoTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  import Wallaby.Query

  feature "users can create todos", %{session: session} do
    session
    |> visit("/")
    |> assert_has(css("todo-list"))
    |> within_shadow_dom("todo-list", fn el ->
      el
      |> fill_in(css("#todo-input"), with: "Shake it all about")
      |> click(css("#add-item"))
      |> assert_has(css("li", text: "Shake it all about"))
    end)
  end
end
