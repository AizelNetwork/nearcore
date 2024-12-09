#!/bin/bash

/data/project/nearcore/target/release/neard  --home "/data/near/near1" run  > "/data/logs/near/near1" 2>&1 &
sleep 1
/data/project/nearcore/target/release/neard  --home "/data/near/near2" run --boot-nodes "ed25519:9e9JtarsJc3JR1PcnU6ykQgUmEf6LCAQi4ZjZjMuxrip@127.0.0.1:24567" > "/data/logs/near/near2" 2>&1 &
sleep 1
/data/project/nearcore/target/release/neard  --home "/data/near/near3" run --boot-nodes "ed25519:9e9JtarsJc3JR1PcnU6ykQgUmEf6LCAQi4ZjZjMuxrip@127.0.0.1:24567" > "/data/logs/near/near3" 2>&1 &
sleep 1
/data/project/nearcore/target/release/neard  --home "/data/near/near4" run --boot-nodes "ed25519:9e9JtarsJc3JR1PcnU6ykQgUmEf6LCAQi4ZjZjMuxrip@127.0.0.1:24567" > "/data/logs/near/near4" 2>&1 &
sleep 10

## create new accounts
near account create-account fund-myself node2-validator '1000 NEAR' use-manually-provided-public-key ed25519:2JvmJLCnRfPLzUnYHZsEhSKcNLw7E2qFPAD8U3gmX2HU sign-as miner network-config custom sign-with-legacy-keychain send
sleep 3
near account create-account fund-myself node3-validator '1000 NEAR' use-manually-provided-public-key ed25519:9CeceB9q57XdrFgE58byk9RpNyH4cotbRXFZSqLKcW6E sign-as miner network-config custom sign-with-legacy-keychain send
sleep 3
near account create-account fund-myself node4-validator '1000 NEAR' use-manually-provided-public-key ed25519:GEnjFuPBKc5LxX5YPVoYyRBZ5tyCfU2Vz9Sf1PvABwhN sign-as miner network-config custom sign-with-legacy-keychain send

## stake
