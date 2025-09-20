// Contract addresses
export const CONTRACT_ADDRESSES = {
  RUST_NFT: '0x525c2aba45f66987217323e8a05ea400c65d06dc',
  SOLIDITY_NFT: '0x3DF948c956e14175f43670407d5796b95Bb219D8',
  SOLIDITY_AND_STYLUS_NFT: '0x75E0E92A79880Bd81A69F72983D03c75e2B33dC8',
} as const;

// Contract ABIs (if needed in the future)
export const CONTRACT_ABIS = {
  // Add ABIs here when needed
} as const;

// Contract names for UI display
export const CONTRACT_NAMES = {
  [CONTRACT_ADDRESSES.RUST_NFT]: 'Rust Stylus NFT',
  [CONTRACT_ADDRESSES.SOLIDITY_NFT]: 'Solidity NFT',
  [CONTRACT_ADDRESSES.SOLIDITY_AND_STYLUS_NFT]: 'Solidity + Stylus NFT',
} as const;

export type ContractName = keyof typeof CONTRACT_NAMES;
