var localizeText = function(sym, textId, translationId /*optional*/) {
  // For parses query string parameters
  function getUrlVars() {
      var vars = [], hash;
      var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
      for(var i = 0; i < hashes.length; i++)
      {
          hash = hashes[i].split('=');
          vars.push(hash[0]);
          vars[hash[0]] = hash[1];
      }
      return vars;
  }

  // Default language is English
  var lang = "en";

  // Try to acquire localizationLanguage setting variable
  if(typeof localizationLanguage !== 'undefined') {
    lang = localizationLanguage;
  } else {
    var urlVars = getUrlVars();
    if("localizationLanguage" in urlVars){
      lang = urlVars["localizationLanguage"];
    }
  }

  // Set localized text
  if(typeof translationId === 'undefined'){
    translationId = textId;
  }
  sym.$(textId).html(strings[lang][translationId]);
};
