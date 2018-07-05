defmodule Sequence.Server do
  use GenServer

  def handle_cast({:increment_number, delta}, current_number) do
    {:noreply, current_number + delta}
  end

  def handle_call(:next_number, _from, current_number) do
    {:reply, current_number + 1, current_number + 1}
  end
end
