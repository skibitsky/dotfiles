// Source: https://hypothes.is/embed.js

(function() {
    var require = ("function" == typeof hypothesisRequire && hypothesisRequire);
    (function() {
        function r(e, n, t) {
            function o(i, f) {
                if (!n[i]) {
                    if (!e[i]) {
                        var c = "function" == typeof require && require;
                        if (!f && c) return c(i, !0);
                        if (u) return u(i, !0);
                        var a = new Error("Cannot find module '" + i + "'");
                        throw a.code = "MODULE_NOT_FOUND", a
                    }
                    var p = n[i] = {
                        exports: {}
                    };
                    e[i][0].call(p.exports, function(r) {
                        var n = e[i][1][r];
                        return o(n || r)
                    }, p, p.exports, r, e, n, t)
                }
                return n[i].exports
            }
            for (var u = "function" == typeof require && require, i = 0; i < t.length; i++) o(t[i]);
            return o
        }
        return r
    })()({
        1: [function(require, module, exports) {
            "use strict";

            function _toConsumableArray(e) {
                return _arrayWithoutHoles(e) || _iterableToArray(e) || _nonIterableSpread()
            }

            function _nonIterableSpread() {
                throw new TypeError("Invalid attempt to spread non-iterable instance")
            }

            function _iterableToArray(e) {
                if (Symbol.iterator in Object(e) || "[object Arguments]" === Object.prototype.toString.call(e)) return Array.from(e)
            }

            function _arrayWithoutHoles(e) {
                if (Array.isArray(e)) {
                    for (var t = 0, s = new Array(e.length); t < e.length; t++) s[t] = e[t];
                    return s
                }
            }
            var _require = require("../shared/polyfills"),
                requiredPolyfillSets = _require.requiredPolyfillSets;

            function injectStylesheet(e, t) {
                var s = e.createElement("link");
                s.rel = "stylesheet", s.type = "text/css", s.href = t, e.head.appendChild(s)
            }

            function injectScript(e, t) {
                var s = e.createElement("script");
                s.type = "text/javascript", s.src = t, s.async = !1, e.head.appendChild(s)
            }

            function injectAssets(e, t, s) {
                s.forEach(function(s) {
                    var r = t.assetRoot + "build/" + t.manifest[s];
                    r.match(/\.css/) ? injectStylesheet(e, r) : injectScript(e, r)
                })
            }

            function polyfillBundles(e) {
                return requiredPolyfillSets(e).map(function(e) {
                    return "scripts/polyfills-".concat(e, ".bundle.js")
                })
            }

            function bootHypothesisClient(e, t) {
                if (!e.querySelector('link[type="application/annotator+html"]')) {
                    var s = e.createElement("link");
                    s.rel = "sidebar", s.href = t.sidebarAppUrl, s.type = "application/annotator+html", e.head.appendChild(s);
                    var r = e.createElement("link");
                    r.rel = "hypothesis-client", r.href = t.assetRoot + "build/boot.js", r.type = "application/annotator+javascript", e.head.appendChild(r);
                    var n = polyfillBundles(["document.evaluate", "es2015", "es2016", "es2017", "url"]);
                    injectAssets(e, t, [].concat(_toConsumableArray(n), ["scripts/jquery.bundle.js", "scripts/annotator.bundle.js", "styles/icomoon.css", "styles/annotator.css", "styles/pdfjs-overrides.css"]))
                }
            }

            function bootSidebarApp(e, t) {
                var s = polyfillBundles(["es2015", "es2016", "es2017", "string.prototype.normalize", "fetch", "url"]);
                injectAssets(e, t, [].concat(_toConsumableArray(s), ["scripts/sentry.bundle.js", "scripts/angular.bundle.js", "scripts/katex.bundle.js", "scripts/showdown.bundle.js", "scripts/sidebar.bundle.js", "styles/angular-csp.css", "styles/angular-toastr.css", "styles/icomoon.css", "styles/katex.min.css", "styles/sidebar.css"]))
            }

            function boot(e, t) {
                e.querySelector("hypothesis-app") ? bootSidebarApp(e, t) : bootHypothesisClient(e, t)
            }
            module.exports = boot;

        }, {
            "../shared/polyfills": 4
        }],
        2: [function(require, module, exports) {
            "use strict";
            var boot = require("./boot"),
                settings = require("../shared/settings").jsonConfigsFrom(document),
                processUrlTemplate = require("./url-template");
            boot(document, {
                assetRoot: processUrlTemplate(settings.assetRoot || "https://cdn.hypothes.is/hypothesis/1.243.0/"),
                manifest: {
                    "fonts/KaTeX_AMS-Regular.woff": "fonts/KaTeX_AMS-Regular.woff?d695b8",
                    "fonts/KaTeX_Caligraphic-Bold.woff": "fonts/KaTeX_Caligraphic-Bold.woff?011f63",
                    "fonts/KaTeX_Caligraphic-Regular.woff": "fonts/KaTeX_Caligraphic-Regular.woff?43014c",
                    "fonts/KaTeX_Fraktur-Bold.woff": "fonts/KaTeX_Fraktur-Bold.woff?555c68",
                    "fonts/KaTeX_Fraktur-Regular.woff": "fonts/KaTeX_Fraktur-Regular.woff?2b146c",
                    "fonts/KaTeX_Main-Bold.woff": "fonts/KaTeX_Main-Bold.woff?516337",
                    "fonts/KaTeX_Main-BoldItalic.woff": "fonts/KaTeX_Main-BoldItalic.woff?2561b4",
                    "fonts/KaTeX_Main-Italic.woff": "fonts/KaTeX_Main-Italic.woff?abcdc7",
                    "fonts/KaTeX_Main-Regular.woff": "fonts/KaTeX_Main-Regular.woff?6b04cf",
                    "fonts/KaTeX_Math-BoldItalic.woff": "fonts/KaTeX_Math-BoldItalic.woff?3c49c7",
                    "fonts/KaTeX_Math-Italic.woff": "fonts/KaTeX_Math-Italic.woff?724c26",
                    "fonts/KaTeX_SansSerif-Bold.woff": "fonts/KaTeX_SansSerif-Bold.woff?dfa790",
                    "fonts/KaTeX_SansSerif-Italic.woff": "fonts/KaTeX_SansSerif-Italic.woff?dafff6",
                    "fonts/KaTeX_SansSerif-Regular.woff": "fonts/KaTeX_SansSerif-Regular.woff?9c9898",
                    "fonts/KaTeX_Script-Regular.woff": "fonts/KaTeX_Script-Regular.woff?923fb5",
                    "fonts/KaTeX_Size1-Regular.woff": "fonts/KaTeX_Size1-Regular.woff?ac3f9a",
                    "fonts/KaTeX_Size2-Regular.woff": "fonts/KaTeX_Size2-Regular.woff?106cfd",
                    "fonts/KaTeX_Size3-Regular.woff": "fonts/KaTeX_Size3-Regular.woff?e61a9f",
                    "fonts/KaTeX_Size4-Regular.woff": "fonts/KaTeX_Size4-Regular.woff?b7132c",
                    "fonts/KaTeX_Typewriter-Regular.woff": "fonts/KaTeX_Typewriter-Regular.woff?9b8bfe",
                    "fonts/h.woff": "fonts/h.woff?95b92e",
                    "styles/angular-csp.css": "styles/angular-csp.css?52bd9d",
                    "styles/angular-toastr.css": "styles/angular-toastr.css?fc6db4",
                    "styles/annotator.css": "styles/annotator.css?0d6a5e",
                    "styles/icomoon.css": "styles/icomoon.css?036138",
                    "styles/katex.min.css": "styles/katex.min.css?aa6b16",
                    "styles/pdfjs-overrides.css": "styles/pdfjs-overrides.css?cd20bf",
                    "styles/sidebar.css": "styles/sidebar.css?76de7f",
                    "scripts/angular.bundle.js": "scripts/angular.bundle.js?b9eb52",
                    "scripts/annotator.bundle.js": "scripts/annotator.bundle.js?2076fc",
                    "scripts/boot.bundle.js": "scripts/boot.bundle.js?a836ac",
                    "scripts/jquery.bundle.js": "scripts/jquery.bundle.js?d8593a",
                    "scripts/katex.bundle.js": "scripts/katex.bundle.js?d92e1a",
                    "scripts/polyfills-document.evaluate.bundle.js": "scripts/polyfills-document.evaluate.bundle.js?6862bb",
                    "scripts/polyfills-es2015.bundle.js": "scripts/polyfills-es2015.bundle.js?c2c7b8",
                    "scripts/polyfills-es2016.bundle.js": "scripts/polyfills-es2016.bundle.js?52e6b3",
                    "scripts/polyfills-es2017.bundle.js": "scripts/polyfills-es2017.bundle.js?494463",
                    "scripts/polyfills-fetch.bundle.js": "scripts/polyfills-fetch.bundle.js?fb2006",
                    "scripts/polyfills-string.prototype.normalize.bundle.js": "scripts/polyfills-string.prototype.normalize.bundle.js?ad24f7",
                    "scripts/polyfills-url.bundle.js": "scripts/polyfills-url.bundle.js?5e57b5",
                    "scripts/sentry.bundle.js": "scripts/sentry.bundle.js?6760ac",
                    "scripts/showdown.bundle.js": "scripts/showdown.bundle.js?c82128",
                    "scripts/sidebar.bundle.js": "scripts/sidebar.bundle.js?88ec54"
                },
                sidebarAppUrl: processUrlTemplate(settings.sidebarAppUrl || "https://hypothes.is/app.html")
            });

        }, {
            "../shared/settings": 5,
            "./boot": 1,
            "./url-template": 3
        }],
        3: [function(require, module, exports) {
            "use strict";

            function extractOrigin(r) {
                var t = r.match(/(https?):\/\/([^:\/]+)/);
                return t ? {
                    protocol: t[1],
                    hostname: t[2]
                } : null
            }

            function currentScriptOrigin() {
                var r = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : document;
                try {
                    var t = r.currentScript;
                    if (!t) {
                        var e = r.querySelectorAll("script");
                        t = e[e.length - 1]
                    }
                    return extractOrigin(t.src)
                } catch (r) {
                    return null
                }
            }

            function processUrlTemplate(r) {
                var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : document;
                if (-1 === r.indexOf("{")) return r;
                var e = currentScriptOrigin(t);
                return e && (r = (r = r.replace("{current_host}", e.hostname)).replace("{current_scheme}", e.protocol)), r
            }
            module.exports = processUrlTemplate;

        }, {}],
        4: [function(require, module, exports) {
            "use strict";

            function _toConsumableArray(r) {
                return _arrayWithoutHoles(r) || _iterableToArray(r) || _nonIterableSpread()
            }

            function _nonIterableSpread() {
                throw new TypeError("Invalid attempt to spread non-iterable instance")
            }

            function _arrayWithoutHoles(r) {
                if (Array.isArray(r)) {
                    for (var t = 0, e = new Array(r.length); t < r.length; t++) e[t] = r[t];
                    return e
                }
            }

            function _toArray(r) {
                return _arrayWithHoles(r) || _iterableToArray(r) || _nonIterableRest()
            }

            function _nonIterableRest() {
                throw new TypeError("Invalid attempt to destructure non-iterable instance")
            }

            function _iterableToArray(r) {
                if (Symbol.iterator in Object(r) || "[object Arguments]" === Object.prototype.toString.call(r)) return Array.from(r)
            }

            function _arrayWithHoles(r) {
                if (Array.isArray(r)) return r
            }

            function hasMethods(r) {
                for (var t = arguments.length, e = new Array(t > 1 ? t - 1 : 0), n = 1; n < t; n++) e[n - 1] = arguments[n];
                return e.every(function(t) {
                    return "function" == typeof r[t]
                })
            }
            var needsPolyfill = {
                es2015: function() {
                    if ("function" != typeof Promise || "function" != typeof Map || "function" != typeof Set || "function" != typeof Symbol) return !0;
                    for (var r = 0, t = [
                            [Array, "from"],
                            [Array.prototype, "fill", "find", "findIndex"],
                            [Object, "assign"],
                            [String.prototype, "startsWith", "endsWith"]
                        ]; r < t.length; r++) {
                        var e = _toArray(t[r]),
                            n = e[0],
                            o = e.slice(1);
                        if (!hasMethods.apply(void 0, [n].concat(_toConsumableArray(o)))) return !0
                    }
                    return !1
                },
                es2016: function() {
                    return !hasMethods(Array.prototype, "includes")
                },
                es2017: function() {
                    return !hasMethods(Object, "entries", "values")
                },
                url: function() {
                    try {
                        var r = new window.URL("https://hypothes.is");
                        if ("hypothes.is" !== r.hostname) throw new Error("Broken URL constructor");
                        return !1
                    } catch (r) {
                        return !0
                    }
                },
                "document.evaluate": function() {
                    return "function" != typeof document.evaluate
                },
                "string.prototype.normalize": function() {
                    return !hasMethods(String.prototype, "normalize")
                },
                fetch: function() {
                    return "function" != typeof window.fetch
                }
            };

            function requiredPolyfillSets(r) {
                return r.filter(function(r) {
                    var t = needsPolyfill[r];
                    if (!t) throw new Error('Unknown polyfill set "'.concat(r, '"'));
                    return t()
                })
            }
            module.exports = {
                requiredPolyfillSets: requiredPolyfillSets
            };

        }, {}],
        5: [function(require, module, exports) {
            "use strict";

            function assign(o, s) {
                for (var n in s) s.hasOwnProperty(n) && (o[n] = s[n]);
                return o
            }

            function jsonConfigsFrom(o) {
                for (var s = {}, n = o.querySelectorAll("script.js-hypothesis-config"), r = 0; r < n.length; r++) {
                    var t = void 0;
                    try {
                        t = JSON.parse(n[r].textContent)
                    } catch (o) {
                        console.warn("Could not parse settings from js-hypothesis-config tags", o), t = {}
                    }
                    assign(s, t)
                }
                return s
            }
            module.exports = {
                jsonConfigsFrom: jsonConfigsFrom
            };

        }, {}]
    }, {}, [2])

    ;
})()