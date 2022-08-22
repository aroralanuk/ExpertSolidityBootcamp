# Lecture #1

Q. What information is held for an Ethereum account?

A. Ethereum account state has four fields:

- nonce - index of transactions send from an EOA or index of contract creation calls for contract accounts
- balance - eth balance in wei
- codeHash - immutable EVM code which can be executed as function calls, empty
  in case of EOA
- storageRoot - root of the Merkle Patricia trie containing the storage contents
  of the account

Q. Where is the full Ethereum state held?

A. Ethereum blockchain only stores the root nodes of the the state,
storage, and receipt tries. Only the full nodes store the global ethereum state
from the genesis block. Majority of the ETH client implementations use LevelDB
which is a key-value storage library for fast retrievals.

Q. What is a replay attack? Which 2 pieces of information can prevent it?

A. A replay attack is taking a transaction on one blockchain, and maliciously or
fraudulently repeating it on another blockchain.
EIP-155 was proposed as a way to prevent replay attacks. chainID is used as a
field for calculating v in the ECDSA signature , i.e., v = CHAIN_ID \* 2 + 35.
Block number 2,675,000 was used for the hardfork. More info [here](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-155.md).

Q. What checks are made on transactions for view functions?

A. The transaction is checked for the following:

- if the transaction is modifying contract state
- enough gas is provided if called internally
