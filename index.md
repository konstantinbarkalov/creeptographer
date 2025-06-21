---
layout: default
title: Creeptographer
redirect: true
---

<script>
  // Detect user language and redirect accordingly
  function getBrowserLanguage() {
    const lang = navigator.language || navigator.userLanguage;
    const shortLang = lang.split('-')[0].toLowerCase();
    return shortLang;
  }

  // Map browser language to available site languages
  function mapLanguage(browserLang) {
    const langMap = {
      'en': 'en',
      'ru': 'ru',
      'th': 'th',
      // Add more mappings as needed
    };
    return langMap[browserLang] || 'en'; // Default to English
  }

  // Redirect to the appropriate language version
  const browserLang = getBrowserLanguage();
  const siteLanguage = mapLanguage(browserLang);
  window.location.href = "{{ site.baseurl }}/" + siteLanguage + "/";
</script>

<noscript>
  <meta http-equiv="refresh" content="0;url={{ site.baseurl }}/en/">
  <p>Please click <a href="{{ site.baseurl }}/en/">here</a> if you are not redirected automatically.</p>
</noscript>