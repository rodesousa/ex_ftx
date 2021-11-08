defmodule ExFtx.ConditionalOrders.Create do
  alias ExFtx.JsonResponse

  @type credentials :: ExFtx.Credentials.t()
  @type order_payload :: ExFtx.OrderConditional.t()
  @type result :: {:ok, map} | {:error, String.t() | :parse_result_item}

  @spec post(credentials, order_payload) :: result
  def post(credentials, order_payload) do
    "/conditional_orders"
    |> ExFtx.HTTPClient.auth_post(credentials, to_payload(order_payload))
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

  defp to_payload(order_payload) do
    order_payload
    |> ProperCase.to_camel_case()
  end
end
