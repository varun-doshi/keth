from ethereum.base_types import (
    U64,
    U256,
    Bytes,
    Bytes8,
    Bytes32,
    Uint,
    TupleBytes32,
    bool,
    TupleBytes,
)
from ethereum.cancun.fork_types import Address, Bloom, Root
from ethereum.crypto.hash import Hash32

struct WithdrawalStruct {
    index: U64,
    validator_index: U64,
    address: Address,
    amount: U256,
}

struct Withdrawal {
    value: WithdrawalStruct*,
}

struct TupleWithdrawalStruct {
    value: Withdrawal*,
    len: felt,
}

struct TupleWithdrawal {
    value: TupleWithdrawalStruct*,
}

struct HeaderStruct {
    parent_hash: Hash32,
    ommers_hash: Hash32,
    coinbase: Address,
    state_root: Root,
    transactions_root: Root,
    receipt_root: Root,
    bloom: Bloom,
    difficulty: Uint,
    number: Uint,
    gas_limit: Uint,
    gas_used: Uint,
    timestamp: U256,
    extra_data: Bytes,
    prev_randao: Bytes32,
    nonce: Bytes8,
    base_fee_per_gas: Uint,
    withdrawals_root: Root,
    blob_gas_used: U64,
    excess_blob_gas: U64,
    parent_beacon_block_root: Root,
}

struct Header {
    value: HeaderStruct*,
}

struct TupleHeaderStruct {
    value: Header*,
    len: felt,
}

struct TupleHeader {
    value: TupleHeaderStruct*,
}

struct LogStruct {
    address: Address,
    topics: TupleBytes32,
    data: Bytes,
}

struct Log {
    value: LogStruct*,
}

struct TupleLogStruct {
    value: Log*,
    len: felt,
}

struct TupleLog {
    value: TupleLogStruct*,
}

struct ReceiptStruct {
    succeeded: bool,
    cumulative_gas_used: Uint,
    bloom: Bloom,
    logs: TupleLog,
}

struct Receipt {
    value: ReceiptStruct*,
}
