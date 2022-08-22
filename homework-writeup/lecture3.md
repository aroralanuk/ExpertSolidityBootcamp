# Lecture 3

Q. What are the advantages and disadvantages of the 256 bit word length in the EVM?

A. Advantages:

- Ethereum uses keccak256 encryption scheme which returns 256 bit hashes which can be conveniently stored in a 256-bit word and key-value mappings where hashes of keys are 256 bit long.
- Ease with storing 160 bit addresses in one slot
- Fixed size means determinsitic operations

Disadvantages:

- 256 word require 4 access function for a 64 bit architecture which makes it slow and natively uncompatible with hardware design
- needs efficient variable packing or you'll be wasting storage unknowingly while writing contracts

Q. What would happen if the implementation of a precompiled contract varied between Ethereum clients?

A. Error

Q. Do we need to validate the beneficiary field in the Ethereum block?

A. No
