if [[ $1 = "pk" ]]; then
    export $(cat .env | xargs) && \
    forge script ./script/DeployAgentKey.s.sol \
        --rpc-url $BASE_SEPOLIA_RPC_URL \
        --broadcast \
        -g 200 \
        --force \
        --verify \
        --verifier-url https://api-sepolia.basescan.org/api \
        --etherscan-api-key $BASESCAN_API_KEY \
        --interactives 1 \
        --slow
else
    export $(cat .env | xargs) && \
    forge script ./script/DeployAgentKey.s.sol \
        --rpc-url $BASE_SEPOLIA_RPC_URL \
        --broadcast \
        -g 200 \
        --force \
        --verify \
        --verifier-url https://api-sepolia.basescan.org/api \
        --etherscan-api-key $BASESCAN_API_KEY \
        --account $FORGE_ACCOUNT \
        --slow
fi