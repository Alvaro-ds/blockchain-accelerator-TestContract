# TestContract

This project is a simple Solidity practice project designed to be used with [Remix IDE](https://remix.ethereum.org/). It contains a basic smart contract that demonstrates core Solidity concepts such as state variables, arrays, mappings, structs, modifiers, events, and public functions.

## Project Purpose

The goal of this project is educational. The contract is intentionally small and easy to read, making it a good starting point for learning how Solidity syntax works and how to compile and deploy contracts in Remix.

## Project Structure

```text
1_Remix/
|- contracts/
|  |- ContratoTest.sol
|- .gitignore
`- readme.md
```

## Smart Contract

The main contract is [`contracts/ContratoTest.sol`](./contracts/ContratoTest.sol).

It includes:

- Different integer types such as `uint256`, `uint8`, and `uint32`
- A `string` variable
- Boolean variables
- A fixed-size array
- A `mapping`
- A `struct` definition
- A custom modifier
- An event called `Multiplicacion`
- A public function called `multiplier`

## Solidity Version

The contract uses:

```solidity
pragma solidity 0.8.24;
```

Make sure Remix is set to compiler version `0.8.24`.

## How to Use in Remix

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new workspace or open your local files.
3. Copy the content of `contracts/ContratoTest.sol` into a file in Remix.
4. Open the **Solidity Compiler** tab.
5. Select compiler version `0.8.24`.
6. Compile `ContratoTest.sol`.
7. Open the **Deploy & Run Transactions** tab.
8. Deploy the `ContratoTest` contract.
9. Interact with the `multiplier(uint256,uint256)` function from the deployed instance.

## Contract Behavior

The `multiplier` function:

- Receives two unsigned integers
- Multiplies them
- Emits the `Multiplicacion` event with the result
- Returns the multiplication result

Example:

```solidity
multiplier(4, 5) // returns 20
```

## Notes

- This contract is for learning purposes only.
- It is not production-ready.
- Some variables are included only as Solidity examples and are not exposed through getter functions.
- The modifier in this contract uses a condition that always reverts, so the `multiplier` function will currently fail unless the modifier logic is changed.

## License

This project uses the license declared in the contract:

`LGPL-3.0-only`
