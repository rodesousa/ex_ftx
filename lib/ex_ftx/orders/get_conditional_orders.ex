defmodule ExFtx.Orders.GetConditionalOrders do
  alias ExFtx.JsonResponse

  @type credentials :: ExFtx.Credentials.t()
  @type order_payload :: ExFtx.OrderConditional.t()
  @type result :: {:ok, map} | {:error, String.t() | :parse_result_item}

  @spec get(credentials) :: result
  def get(credentials) do
    "/conditional_orders"
    |> ExFtx.HTTPClient.auth_get(credentials, %{})
    |> parse_response()
  end

  defp parse_response({:ok, %JsonResponse{success: true, result: order}}) do
    order
    |> Enum.map(&Mapail.map_to_struct(&1, ExFtx.OrderConditional, transformations: [:snake_case]))
    |> Enum.reduce(
      {:ok, []},
      fn
        {:ok, i}, {:ok, acc} -> {:ok, [i | acc]}
        _, _acc -> {:error, :parse_result_item}
      end
    )
  end

  defp parse_response({:ok, %JsonResponse{success: false, error: error}}) do
    {:error, error}
  end
end
