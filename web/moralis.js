const serverUrl = "https://pym3qnzp1aax.usemoralis.com:2053/server";
const appId = "fJAAtDS7hryZ3HqBseVUWpPD2tsrZWUBAZiikbaY";
console.log("Startting up Moralis");
Moralis.start({ serverUrl, appId });
console.log("Moralis Initialized");

async function login() {
  let user = Moralis.User.current();
  if (!user) {
    user = await Moralis.authenticate({
      signingMessage: "Sign this message in order to login.",
    }).then(function (user) {
      console.log("logged in user:", user);
      console.log(user.get("ethAddress"));
    });
  }
}

async function logout() {
  await Moralis.User.logOut();
  console.log("logged out");
}

async function isLoggedIn() {
  return Moralis.User != null;
}

async function upload(moduleId, rawJsonBase64) {
  const file = new Moralis.File(moduleId + ".json", { base64: rawJsonBase64 });
  await file.saveIPFS();
  return file.hash();
}
