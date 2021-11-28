const String kMumbaiAlchemy =
    'https://polygon-mumbai.g.alchemy.com/v2/eb606PcUHxu8IV4HKL6kLPlidrk-bi5N';

const List<int> supportedChains = [80001];

const String kDao = '0x49F371DaB13414437A31388430DC47fcE9C56dfc';
const String kDaobao = '0x6486aE4a9aBD4c3f638569212c0D1E1899Cebc8D';
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
  'function getMembers(address addy) view returns(bool) ',
  'function getVoted(address addy, string str) view returns(bool)',
  'function decideProposal(string id)',
  'function mediateRandomness() view returns (string)',
  'function currentWinner() view returns (address)',
  'function decideWinner()',
];
