defmodule ExFtx.OrderConditional do
  alias __MODULE__

  @type client_id :: String.t() | nil
  @type t :: %OrderConditional{
          filled_size: number,
          market: ExFtx.Market.name(),
          id: pos_integer,
          order_price: number,
          order_type: String.t(),
          reduce_only: boolean,
          retry_until_filled: boolean,
          side: String.t(),
          size: number,
          status: String.t(),
          trigger_price: number,
          type: String.t()
        }

  defstruct ~w[
    filled_size
    market
    id
    order_price
    order_type
    reduce_only
    retry_until_filled
    side
    size
    status
    trigger_price
    type
  ]a
end
