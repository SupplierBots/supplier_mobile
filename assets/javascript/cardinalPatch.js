(() => {
  if (window.Cardinal != undefined) return;
  !(function (e) {
    function n(i) {
      if (t[i]) return t[i].exports;
      var o = (t[i] = { exports: {}, id: i, loaded: !1 });
      return e[i].call(o.exports, o, o.exports, n), (o.loaded = !0), o.exports;
    }
    var i = window.songbirdLoader;
    window.songbirdLoader = function (t, r) {
      for (var s, u, a = 0, l = []; a < t.length; a++)
        (u = t[a]), o[u] && l.push.apply(l, o[u]), (o[u] = 0);
      for (s in r) Object.prototype.hasOwnProperty.call(r, s) && (e[s] = r[s]);
      for (i && i(t, r); l.length; ) l.shift().call(null, n);
    };
    var t = {},
      o = { 8: 0 };
    return (
      (n.e = function (e, i) {
        if (0 === o[e]) return i.call(null, n);
        if (void 0 !== o[e]) o[e].push(i);
        else {
          o[e] = [i];
          var t = document.getElementsByTagName("head")[0],
            r = document.createElement("script");
          (r.type = "text/javascript"),
            (r.charset = "utf-8"),
            (r.async = !0),
            (r.crossOrigin = "anonymous"),
            (r.src = n.p + "" + e + ".b0b7361d7891da471185.songbird.js"),
            t.appendChild(r);
        }
      }),
      (n.m = e),
      (n.c = t),
      (n.p =
        "https://songbird.cardinalcommerce.com/edge/v1/b0b7361d7891da471185/"),
      n(0)
    );
  })({
    0: function (e, n, i) {
      e.exports = i(75);
    },
    5: function (e, n) {
      var i;
      try {
        i = window;
      } catch (e) {
        i = this;
      }
      e.exports = {
        apiId: void 0,
        bin: void 0,
        deviceFingerprinting: {
          shouldRunFingerprinting: !1,
          urls: { base: void 0, browser: void 0, profileBin: void 0 },
        },
        farnsworthLabs: {},
        formFields: {},
        jwtOrderObject: void 0,
        merchantJwt: void 0,
        message: void 0,
        orgUnitId: void 0,
        setup: { eventCompleted: !1, modulesLoaded: void 0 },
        storage: {},
        tid: void 0,
        transactionFlow: void 0,
        timers: { browserRender: null },
        urls: { hostedFields: void 0, postMessageWhiteList: [] },
        window: i,
      };
    },
    46: function (e, n) {
      function i(e) {
        (this.Namespace = e),
          (this.logQueue = []),
          (this.log = function (e, n) {
            e || (e = "debug"), this.logQueue.push({ type: e, message: n });
          });
      }
      (i.prototype.getLogQueue = function () {
        return this.logQueue;
      }),
        (i.prototype.getNamespace = function () {
          return this.Namespace;
        }),
        (i.prototype.trace = function (e) {
          this.log("trace", e);
        }),
        (i.prototype.debug = function (e) {
          this.log("debug", e);
        }),
        (i.prototype.info = function (e) {
          this.log("info", e);
        }),
        (i.prototype.warn = function (e) {
          this.log("warn", e);
        }),
        (i.prototype.error = function (e) {
          this.log("error", e);
        }),
        (e.exports = i);
    },
    54: function (e, n, i) {
      var t,
        o = i(5),
        r = i(46),
        s = new r("Base.Polyfiller"),
        u = { JSON: !1, performance: !1, bind: !1, filter: !1 },
        a = {
          polyfill: function (e) {
            (t = e),
              "JSON" in o.window
                ? ((u.JSON = !0), a.isFinished())
                : (s.debug("Detected JSON missing, loading polyfill"),
                  i.e(0, function (e) {
                    i(96),
                      s.debug("JSON polyfill loaded"),
                      (u.JSON = !0),
                      a.isFinished();
                  })),
              "performance" in o.window && "mark" in o.window.performance
                ? ((u.performance = !0), a.isFinished())
                : (s.debug(
                    "Detected performance library missing in browser - loading polyfill"
                  ),
                  i.e(2, function (e) {
                    i(117),
                      s.debug("performance polyfill loaded"),
                      (u.performance = !0),
                      a.isFinished();
                  })),
              Function.prototype.bind
                ? ((u.bind = !0), a.isFinished())
                : (s.debug("Detected bind is missing - loading polyfill"),
                  i.e(0, function (e) {
                    i(118)(),
                      s.debug("bind polyfill loaded"),
                      (u.bind = !0),
                      a.isFinished();
                  })),
              Array.prototype.filter
                ? ((u.filter = !0), a.isFinished())
                : (s.debug("Detected filter is missing - loading polyfill"),
                  i.e(0, function (e) {
                    i(119)(),
                      s.debug("filter polyfill loaded"),
                      (u.filter = !0),
                      a.isFinished();
                  }));
          },
          isFinished: function () {
            for (var e in u) if (u.hasOwnProperty(e) && !u[e]) return !1;
            t(s);
          },
        };
      e.exports = a;
    },
    75: function (e, n, i) {
      !(function (e, n) {
        var t,
          o = [],
          r = [],
          s = [],
          u = [],
          a = [],
          l = [],
          p = [],
          d = [];
        (t = {
          configure: function (e) {
            o.push({ name: e, arguments: arguments });
          },
          setup: function (e) {
            l.push({ name: e, arguments: arguments });
          },
          start: function (e) {
            p.push({ name: e, arguments: arguments });
          },
          continue: function (e) {
            r.push({ name: e, arguments: arguments });
          },
          on: function (e) {
            a.push({ name: e, arguments: arguments });
          },
          trigger: function (e) {
            d.push({ name: e, arguments: arguments });
          },
          off: function (e) {
            u.push({ name: e, arguments: arguments });
          },
          complete: function (e) {
            s.push({ name: e, arguments: arguments });
          },
        }),
          (e.Cardinal = t),
          (e.onerror !== n && null !== e.onerror) ||
            (e.onerror = function () {
              return !1;
            }),
          i(54).polyfill(function (s) {
            i.e(1, function (u) {
              var c = i(6),
                f = i(4).active,
                g = i(107),
                h = i(5),
                m = i(3),
                b = i(9),
                y = i(11),
                v = i(55),
                w = i(12),
                E = i(1),
                N = i(13),
                F = i(100),
                O = E.getLoggerInstance("Base.Main"),
                S = i(4).passive,
                L = i(7),
                x = i(99),
                C = {
                  configurationQueue: o,
                  onQueue: a,
                  startQueue: p,
                  continueQueue: r,
                };
              E.addToLoggerCollection(s);
              try {
                L.on("error", function (e) {
                  f.publish("error.fatal").then(function () {
                    y.handleError(e, b.GENERAL.NUMBER, b.GENERAL.DESCRIPTION);
                  });
                }),
                  O.info("Using Songbird.js v" + m.getSystemConfig().version),
                  F.init(),
                  (t.setup = c.partial(f.publish, "setup")),
                  (t.on = S.subscribe),
                  (t.start = function (e) {
                    (arguments[0] = "start." + e.toUpperCase()),
                      f.publish.apply(this, arguments);
                  }),
                  (t.continue = function (e) {
                    (arguments[0] = "continue." + e.toUpperCase()),
                      f.publish.apply(this, arguments);
                  }),
                  (t.complete = c.partial(f.publish, "payments.completed")),
                  (t.trigger = f.publish),
                  (t.off = S.removeEvent),
                  v.setupSubscriptions(),
                  (h.browser = g.getBrowserDetails()),
                  c.each(d, function (e) {
                    f.publish.apply(this, e.arguments);
                  }),
                  f.subscribe("setup", c.partial(x.processSetup, C)),
                  l.length > 0 &&
                    f.publish("setup", l[0].arguments[0], l[0].arguments[1]),
                  (h.namespace = t),
                  (h.window = e),
                  N.initialize(e),
                  N.captureTiming(w.getCurrentScript());
              } catch (e) {
                O.error(
                  "Fatal Exception while processing: " +
                    (e.message !== n ? e.message : e)
                ),
                  y.handleError(e, b.GENERAL.NUMBER, b.GENERAL.DESCRIPTION);
              }
            });
          });
      })(window);
    },
  });
})();
