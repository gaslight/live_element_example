defmodule LiveElementExampleWeb.TodosLive.TodoList do
  use LiveElement

  def mount(_params, %{"foo" => foo}, socket) do
    {:ok,
     socket
     |> assign(
       foo: foo,
       todo_items: ["Put your left foot if", "Take your left foot out"]
     )}
  end

  def handle_event(
        "add_todo",
        %{"todo" => item},
        %{assigns: %{todo_items: todo_items}} = socket
      ) do
    {:noreply,
     socket
     |> assign(todo_items: todo_items ++ [item])}
  end

  def handle_event(
        "add_something",
        _payload,
        %{assigns: %{todo_items: todo_items}} = socket
      ) do
    {:noreply,
     socket
     |> assign(todo_items: todo_items ++ [%{item: "something", due_date: nil}])}
  end
end
