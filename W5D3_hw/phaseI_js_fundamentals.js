function madLib(verb, adjective, noun) {
  console.log('We shall ' + verb.toUpperCase() + ' the ' +
    adjective.toUpperCase() + ' ' + noun.toUpperCase()'.')
}

function isSubstring(searchString, subString) {
  if (searchString.includes(subString)) {
    return true;
  } else {
    return false;
  }
}
