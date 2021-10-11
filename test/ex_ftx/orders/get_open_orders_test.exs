defmodule ExFtx.Orders.GetOpenOrdersTest do
  use ExUnit.Case, async: false
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start()
    :ok
  end

  @valid_credentials %ExFtx.Credentials{
    api_key: System.get_env("FTX_API_KEY"),
    api_secret: System.get_env("FTX_API_SECRET")
  }
  @invalid_credentials %ExFtx.Credentials{
    api_key: "invalid",
    api_secret: "invalid"
  }

  test ".orders/1 with valid credentials" do
    use_cassette "orders/get_open/get_ok" do
      assert {:ok, _order_1} = ExFtx.Orders.GetOpenOrders.get(@valid_credentials)
    end
  end

  test ".orders with invalid credentials" do
    use_cassette "orders/get_open/get_unauthorized" do
      ExFtx.Orders.GetOpenOrders.get(@invalid_credentials)
      |> IO.inspect()

      assert ExFtx.Orders.GetOpenOrders.get(@invalid_credentials) == {:error, "Not logged in"}
    end
  end
end
