# Steps to reproduce

1. Create a new file in `/web` named `manifest.json`. This file will be `gitignored`.
2. Copy the contents of `web/manifest_mv3.json` into the new `manifest.json`.
3. Add a Googler extension key to the `key` field.
4. Compile the extension with DDC: `dart run build_runner build web --output build`
5. Visit `chrome://extensions`, toggle Developer mode on (top right corner), and then click "Load unpacked"
6. Load the exension from `build/web`
7. Click on the link to "service worker"
8. See the error message preventing extension from loading:
```
Uncaught Error: importScripts failed for chrome-extension://pebbhcjfokadbgbnlmogdkkaahmamnap/background.dart.bootstrap.js at chrome-extension://pebbhcjfokadbgbnlmogdkkaahmamnap/background.dart.bootstrap.js
http://requirejs.org/docs/errors.html#importscripts
    at makeError (require.js:168:17)
    at Function.load (require.js:1984:33)
    at Object.load (require.js:1685:21)
    at Module.load (require.js:834:29)
    at Module.fetch (require.js:824:66)
    at Module.check (require.js:856:30)
    at Module.enable (require.js:1176:22)
    at Object.enable (require.js:1557:39)
    at Module.<anonymous> (require.js:1161:33)
    at require.js:134:23
```

# Note:

- Compiling the MV3 extension with dart2js works (in step 4, run `dart run build_runner build web --output build --release` instead)
- Compiling the MV2 extension with DDC works (in step 2, copy the contents of `web/manifest_mv2.json` instead)

