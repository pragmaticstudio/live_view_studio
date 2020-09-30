defmodule LiveViewStudio.Flights do
  def search_by_number(number) do
    list_flights()
    |> Enum.filter(&(&1.number == number))
  end

  def search_by_airport(airport) do
    list_flights()
    |> Enum.filter(&(&1.origin == airport || &1.destination == airport))
  end

  def list_flights do
    [
      %{
        number: "450",
        origin: "DEN",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 1),
        arrival_time: Timex.shift(Timex.now(), days: 1, hours: 2)
      },
      %{
        number: "450",
        origin: "DEN",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 2),
        arrival_time: Timex.shift(Timex.now(), days: 2, hours: 2)
      },
      %{
        number: "450",
        origin: "DEN",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 3),
        arrival_time: Timex.shift(Timex.now(), days: 3, hours: 2)
      },
      %{
        number: "860",
        origin: "DFW",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 1),
        arrival_time: Timex.shift(Timex.now(), days: 1, hours: 3)
      },
      %{
        number: "860",
        origin: "DFW",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 2),
        arrival_time: Timex.shift(Timex.now(), days: 2, hours: 3)
      },
      %{
        number: "860",
        origin: "DFW",
        destination: "ORD",
        departure_time: Timex.shift(Timex.now(), days: 3),
        arrival_time: Timex.shift(Timex.now(), days: 3, hours: 3)
      },
      %{
        number: "740",
        origin: "DAB",
        destination: "DEN",
        departure_time: Timex.shift(Timex.now(), days: 1),
        arrival_time: Timex.shift(Timex.now(), days: 1, hours: 4)
      },
      %{
        number: "740",
        origin: "DAB",
        destination: "DEN",
        departure_time: Timex.shift(Timex.now(), days: 2),
        arrival_time: Timex.shift(Timex.now(), days: 2, hours: 4)
      },
      %{
        number: "740",
        origin: "DAB",
        destination: "DEN",
        departure_time: Timex.shift(Timex.now(), days: 3),
        arrival_time: Timex.shift(Timex.now(), days: 3, hours: 4)
      }
    ]
  end
end
