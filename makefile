build:
	docker build -t raydium-swap:1.0.0 .

run:
	docker run --rm -e RPC_URL=https://api.mainnet-beta.solana.com -e WALLET_PRIVATE_KEY=1111111111111111111111111111111PPm2a2NNZH2EFJ5UkEjkH9Fcxn8cvjTmZDKQQisyLDmA --name raydium-swaps raydium-swap:1.0.0
