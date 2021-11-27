const String kMumbaiAlchemy =
    'https://polygon-mumbai.g.alchemy.com/v2/eb606PcUHxu8IV4HKL6kLPlidrk-bi5N';

const List<int> supportedChains = [80001];

const String kDao = '0xc618154036D2cEe85b7BBfb12925b7D95207fBa7';
const String kDaobao = '0xAa7596858Be5Ac5a86B71866e224c20F5A2dc2B3';
const String kWMATIC = '0x86652c1301843B4E06fBfbBDaA6849266fb2b5e7';

String getAlchemyLink(int chainId) {
  switch (chainId) {
    case 80001:
      return kMumbaiAlchemy;
  }
  return kMumbaiAlchemy;
}

const daoAbi = [
  "function stake() payable public",
  "function withdraw()",
  "function removeIndex(string[] arrayname, uint index)",
  "function submitModuleProposal(string id, string  _data, uint8 _indicator)",
  "function vote(string calldata id, bool value)",
  "function getLiveProposals() view returns(string[])",
  "function getProposalsHistory() view returns(string[])",
  "function getActiveProposals() external view returns(string[])",
  "function getProposalInfo(string str) view returns(tuple(string,uint,uint8,uint,address[],uint8,uint,uint,uint))",
  'function getMembers(address addy) view returns(bool) '
];