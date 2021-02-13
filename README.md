# ExFtx

[![Build Status](https://github.com/fremantle-capital/ex_ftx/workflows/test/badge.svg?branch=master)](https://github.com/fremantle-capital/ex_ftx/actions?query=workflow%3Atest)
[![hex.pm version](https://img.shields.io/hexpm/v/ex_ftx.svg?style=flat)](https://hex.pm/packages/ex_ftx)

FTX API Client for Elixir

## Installation

Add the `ex_ftx` package to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_ftx, "~> 0.0.1"}]
end
```

## API Documentation

https://docs.ftx.com/#overview

## REST API

#### Subaccounts

- [ ] `GET /subaccounts`
- [ ] `POST /subaccounts`
- [ ] `POST /subaccounts/update_name`
- [ ] `DELETE /subaccounts`
- [ ] `GET /subaccounts/{nickname}/balances`
- [ ] `POST /subaccounts/transfer`

#### Markets

- [ ] `GET /markets`
- [ ] `GET /markets/{market_name}`
- [ ] `GET /markets/{market_name}/orderbook?depth={depth}`
- [ ] `GET /markets/{market_name}/trades?limit={limit}&start_time={start_time}&end_time={end_time}`
- [ ] `GET /markets/{market_name}/candles?resolution={resolution}&limit={limit}&start_time={start_time}&end_time={end_time}`

#### Futures

- [ ] `GET /futures`
- [ ] `GET /futures/{future_name}`
- [ ] `GET /futures/{future_name}/stats`
- [ ] `GET /funding_rates`
- [ ] `GET /indexes/{index_name}/weights`
- [ ] `GET /expired_futures`
- [ ] `GET /indexes/{market_name}/candles?resolution={resolution}&limit={limit}&start_time={start_time}&end_time={end_time}`

#### Account

- [ ] `GET /account`
- [ ] `GET /positions`
- [ ] `POST /account/leverage`

#### Wallet

- [ ] `GET /wallet/coins`
- [ ] `GET /wallet/balances`
- [ ] `GET /wallet/all_balances`
- [ ] `GET /wallet/deposit_address/{coin}?method={method}`
- [ ] `GET /wallet/deposits`
- [ ] `GET /wallet/withdrawals`
- [ ] `POST /wallet/withdrawals`
- [ ] `GET /wallet/airdrops`
- [ ] `GET /wallet/saved_addresses`
- [ ] `POST /wallet/saved_addresses`
- [ ] `DELETE /wallet/saved_addresses/{saved_address_id}`

#### Orders

- [ ] `GET /orders?market={market}`
- [ ] `GET /orders/history?market={market}`
- [ ] `GET /orders?market={market}`
- [ ] `GET /orders/history?market={market}`
- [ ] `GET /conditional_orders?market={market}`
- [ ] `GET /conditional_orders/{conditional_order_id}/triggers`
- [ ] `GET /conditional_orders/history?market={market}`
- [ ] `POST /orders`
- [ ] `POST /conditional_orders`
- [ ] `POST /orders/{order_id}/modify`
- [ ] `POST /orders/by_client_id/{client_order_id}/modify`
- [ ] `POST /conditional_orders/{order_id}/modify`
- [ ] `GET /orders/{order_id}`
- [ ] `GET /orders/by_client_id/{client_order_id}`
- [ ] `DELETE /orders/{order_id}`
- [ ] `DELETE /orders/by_client_id/{client_order_id}`:w
- [ ] `DELETE /conditional_orders/{id}`
- [ ] `DELETE /orders`

#### Convert

- [ ] `POST /otc/quotes`
- [ ] `GET /otc/quotes/{quoteId}`
- [ ] `POST /otc/quotes/{quote_id}/accept`

#### Spot Margin

- [ ] `GET /spot_margin/borrow_rates`
- [ ] `GET /spot_margin/lending_rates`
- [ ] `GET /spot_margin/borrow_summary`
- [ ] `GET /spot_margin/market_info?market={market}`
- [ ] `GET /spot_margin/borrow_history`
- [ ] `GET /spot_margin/lending_history`
- [ ] `GET /spot_margin/offers`
- [ ] `GET /spot_margin/lending_info`
- [ ] `POST /spot_margin/offers`

#### Fills

- [ ] `GET /fills?market={market}`

#### Funding Payments

- [ ] `GET /funding_payments`

#### Leveraged Tokens

- [ ] `GET /lt/tokens`
- [ ] `GET /lt/{token_name}`
- [ ] `GET /lt/balances`
- [ ] `GET /lt/creations`
- [ ] `POST /lt/{token_name}/create`
- [ ] `GET /lt/redemptions`
- [ ] `POST /lt/{token_name}/redeem`

#### Options

- [ ] `GET /options/requests`
- [ ] `GET /options/my_requests`
- [ ] `POST /options/requests`
- [ ] `DELETE /options/requests/{request_id}`
- [ ] `GET /options/requests/{request_id}/quotes`
- [ ] `POST  /options/requests/{request_id}/quotes`
- [ ] `GET /options/my_quotes`
- [ ] `DELETE /options/quotes/<quote_id>`
- [ ] `POST /options/quotes/<quote_id>/accept`
- [ ] `GET /options/account_info`
- [ ] `GET /options/positions`
- [ ] `GET /options/trades`
- [ ] `GET /options/fills`
- [ ] `GET /stats/24h_options_volume`
- [ ] `GET /options/historical_volumes/BTC`
- [ ] `GET /options/open_interest/BTC`
- [ ] `GET options/historical_open_interest/BTC`

#### SRM Staking

- [ ] `GET /staking/stakes`
- [ ] `GET /staking/unstake_requests`
- [ ] `GET /staking/balances`
- [ ] `POST /staking/unstake_requests`
- [ ] `DELETE /staking/unstake_requests/{request_id}`
- [ ] `GET /staking/staking_rewards`
- [ ] `POST /srm_stakes/stakes`

## Websocket API

## FIX API