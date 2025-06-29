
<!doctype html>
<html lang="en" class="no-js">
  <head>
    <meta charset="utf-8">
    <link rel="dns-prefetch" href="//s3.envato.com" />

    
<script>window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"fcf8d519de","applicationID":"13909","transactionName":"NTU0DRQNDwshOmIZBRM3dR8TDg84Nys/FRQYBSoLAxQKAjM=","queueTime":0,"applicationTime":20,"agent":"","atts":"DXgvW1wZQRQtPChSS1QZNR0DIQIJPScjUl1UKSkVRFgXFTEtYVIDEysvHBUWPBc2JzkfEhk2eENEChcTNDt3X15UdngQFkBZRXV6f15AQW50S1VbTVZyfm9cUwMpPws5AwQCKjxvSlM7NSAQCg4CSHFmfVBZITM0HQkVEEcKHG1GX0Vhei4PDFVTf2g1RkVfehsJFg4GMCEqBhkFWW9pTkhRVUdsAwUkPDp2ehUPCQZHAy0uGx5fehkRFA0OAmt/f15BWGlsS1BMUlV1aB4RFxcoM1ZTUVRJd35vXFMEPywQFQsMCWZybxMURzhpTVJAHho="}</script>
<script>window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1118.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>Dark Sky Weather Forecast PHP Script Preview - CodeCanyon</title>
    <meta name="description" content="&amp;lt;p&amp;gt;Dark Sky Weather Forecast PHP Script is a PHP script that can show weather data for a sp...">
    <meta name="robots" content="noindex, follow" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />

    <link rel="stylesheet" media="all" href="https://public-assets.envato-static.com/assets/market/core/index-82ef8ec85ef4fe4d64d82c1a0482126f3e45008e84d3aa9d89938d1b81791e1b.css" />
    <link rel="stylesheet" media="all" href="https://public-assets.envato-static.com/assets/market/pages/preview/index-004d35cdd5d555cdd3e956d1b916825642de06529f0fe91fd9f390813761d2fc.css" />

      <link rel="apple-touch-icon-precomposed" type="image/x-icon" href="https://public-assets.envato-static.com/icons/codecanyon.net/apple-touch-icon-72x72-precomposed.png" sizes="72x72" />
  <link rel="apple-touch-icon-precomposed" type="image/x-icon" href="https://public-assets.envato-static.com/icons/codecanyon.net/apple-touch-icon-114x114-precomposed.png" sizes="114x114" />
  <link rel="apple-touch-icon-precomposed" type="image/x-icon" href="https://public-assets.envato-static.com/icons/codecanyon.net/apple-touch-icon-144x144-precomposed.png" sizes="144x144" />
<link rel="apple-touch-icon-precomposed" type="image/x-icon" href="https://public-assets.envato-static.com/icons/codecanyon.net/apple-touch-icon-precomposed.png" />

    <script src="https://public-assets.envato-static.com/assets/market/pages/full_screen_preview/index-12e66d37dd6c1db6ed91e7082e89ba9199cc383f24ec4f3cbd4ca469daf998b9.js"></script>

    <script>
      //function to fix height of iframe!
      var calcHeight = function() {
        var headerDimensions = $('.preview__header').height();
        $('.full-screen-preview__frame').height($(window).height() - headerDimensions);
      }

      $(document).ready(function() {
        calcHeight();
      });

      $(window).resize(function() {
        calcHeight();
      }).load(function() {
        calcHeight();
      });
    </script>

    
  </head>
  <body class="full-screen-preview">
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-11834194-12"></script>
      <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
      </script>

    

<iframe class="full-screen-preview__frame" src="https://www.codespeedy.com/demophp/dark_sky_weather_forecast/" name="preview-frame" frameborder="0" noresize="noresize" data-view="fullScreenPreview">
</iframe>


    <script>$(function(){viewloader.execute(Views);});</script>

      <script id="Cookiebot" src="https://consent.cookiebot.com/uc.js" data-cbid="af9b8468-6418-4ac5-9fba-62c4ecf96338" type="text/javascript" async></script>


  <script>
  window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
  setupGoogleAnalytics();

    if (typeof Cookiebot !== 'undefined' && Cookiebot.consent && Cookiebot.consent.statistics ) {
      loadGoogleAnalytics();
    } else {
      window.addEventListener('CookiebotOnAccept', function (e) {
        if (Cookiebot.consent.statistics) {
          loadGoogleAnalytics();
        }
      }, false);
    }

  function setupGoogleAnalytics() {
    (function () {
      ga("create", "UA-11834194-12", {"name":"m","allowLinker":true});

      var ACCOUNTS = ["m"];
      window._envGaTrackerNames = ACCOUNTS;

      for (var i = 0; i < ACCOUNTS.length; i++) {
        t = ACCOUNTS[i];

        ga(t+'.require', 'linker');
        ga(t+'.linker:autoLink', ["activeden.net","audiojungle.net","themeforest.net","videohive.net","graphicriver.net","3docean.net","codecanyon.net","photodune.net","market.styleguide.envato.com","elements.envato.com","build.envatohostedservices.com","author.envato.com","tutsplus.com","sites.envato.com"]);

        ga(t+'.require', 'ec');

        ga(t+'.require', 'displayfeatures');

        ga(t+'.require', 'linkid', 'linkid.js');

        ga(t+'.set', 'dimension20', 'other')



        if ('') {
          ga(t+'.send', {
            hitType: 'pageview',
            page: ''
          });
        } else if ('') {
          // append the analytics_suffix to the page path so the flash alert/error type can be tracked
          var analyticsSuffix = $.trim('').replace(/([A-Z])/g, '$1').replace(/[-_\s]+/g, '-').toLowerCase();
          var uri = URI(window.location.pathname + window.location.search);
          uri.path(uri.path() + '/' + analyticsSuffix);
          var tracking_path = uri.path() + uri.search();
          ga(t+'.send', {
            hitType: 'pageview',
            page: tracking_path,
          });
        } else {
          ga(t+'.send', 'pageview');
        }
      }
    }());
  }

  function loadGoogleAnalytics() {
    (function () {

      var s=document.createElement('script');
      s.type='text/javascript';
      s.async=true;
        s.src='https://www.google-analytics.com/analytics.js';
      var x=document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s,x);
    }());
  }

  
</script>


  
<script>

    if (typeof Cookiebot !== 'undefined' && Cookiebot.consent && Cookiebot.consent.statistics ) {
      enableGoogleAnalyticsLinkWrapper();
    } else {
      window.addEventListener('CookiebotOnAccept', function (e) {
        if (Cookiebot.consent.statistics) {
          enableGoogleAnalyticsLinkWrapper();
        }
      }, false);
    }

  function enableGoogleAnalyticsLinkWrapper() {
    // GA: universal analytics link wrapper
    (function(){
        window._envTrkrs = [["m", "UA-11834194-12"]];

        var debug = false;
        var MAX_RETRIES = 10;

        /*
           The script needs to wait until the Analytics script
           has been downloaded from Google before initializing
        */
        var waitForAnalytics = function(){
            this.count = this.count || 0;

            if (window.ga && ga.getByName) {
                e.init();
            } else {
                if (count < MAX_RETRIES) { setTimeout(waitForAnalytics, 250); }
                count++;
            }
        };

        var e = {
            _envArray: [],
            _envTrkrs: (window._envTrkrsCust && window._envTrkrsCust.length) ? window._envTrkrs.concat(window._envTrkrsCust) : window._envTrkrs,
            init: function() {
                for (var i=0; i < _envTrkrs.length; i++) {
                  if(!ga.getByName(_envTrkrs[i][0])) {
                    ga("create", _envTrkrs[i][1], "auto", {name: _envTrkrs[i][0], allowLinker: true});
                  }
                }

                document.addEventListener('DOMContentLoaded', function(){
                    e.wrapperInit();
                });

                if (debug) {console.log('Initiated');}
            },
            wrapperInit: function() {
                if (typeof window._envIsRunning != 'undefined' || window._envIsRunning == true) {
                    return
                }
                window._envIsRunning = true;

                if (document.addEventListener) {
                    document.addEventListener('click', function(event){
                        var target = event.target;
                        if (target && target.tagName === 'A') {
                            e._envLinksTracker(event);
                        }
                    });
                }
            },
            isInArray: function(e, t) {
                for (var n = 0; n < t.length; n++) {
                    var r = new RegExp(t[n], 'i');
                    if (r.test(e)) {
                        return n
                    }
                }
                return -1
            },
            _envTrackevent: function(e, t, n, r) {
                for (var i = 0; i < this._envTrkrs.length; i++) {
                    var s = this._envTrkrs[i][0].length == 0 ? '' : this._envTrkrs[i][0] + '.';
                    r.length == 0 ? ga(s + 'send', 'event', e, t, n) : ga(s + 'send', 'event', e, t, n, r)
                }
            },
            _envTrackpageview: function(e, t) {
                t = t.charAt(0) == '/' ? t : '/' + t;
                for (var n = 0; n < this._envTrkrs.length; n++) {
                    var r = this._envTrkrs[n][0].length == 0 ? '' : this._envTrkrs[n][0] + '.';
                    ga(r + 'send', 'pageview', e + t);
                }
            },
            _envLinksTracker: function(t) {
                var r = false;
                var i = {
                    outbound: {
                        run: true,
                        useEvent: true
                    },
                    download: {
                        run: true,
                        useEvent: true,
                        reg: ''
                    },
                    self: {
                        run: false,
                        useEvent: true
                    },
                    mail: {
                        run: true,
                        useEvent: true
                    },
                    ext: /\.(doc.?|xls.?|ppt.?|exe|zip|rar|gz|tar|tgz|dmg|csv|pdf|xpi|txt|mp3)$/i
                };
                var s = t.srcElement ? t.srcElement : this;
                if (t.srcElement) {
                    r = true
                }
                while (s.tagName != 'A') {
                    s = s.parentNode
                }
                if (s.href == undefined || s.href == null) {
                    return true
                }
                var o = s.href;
                if (o.length == 0) return;
                var u = s.hostname.toLowerCase();
                var a = s.pathname;
                if (a.length == 0) {
                    a = '/'
                } else if (a.substr(0, 1) != '/') {
                    a = '/' + a
                }
                var f = s.protocol;
                var l = s.search;
                var c = location.hostname;
                c = c.replace(/^www\./i, '').toLowerCase();
                u = u.replace(/^www\./i, '').toLowerCase();
                if (o.match(/^#/)) {
                    if (i.self.run) {
                        i.self.useEvent ? e._envTrackevent('self', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/self', '/' + o);
                        return true
                    }
                } else if (f.match(/^mailto:/i)) {
                    if (i.mail.run) {
                        o = o.replace(/^mailto:/i, '');
                        i.mail.useEvent ? e._envTrackevent('mailto', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/mailto', o);
                        return true
                    }
                } else if ((new RegExp(i.ext)).test(a)) {
                    if (i.download.run) {
                        o = o.replace(/^https?:\/\//i, '');
                        i.download.useEvent ? e._envTrackevent('download', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/download', o);
                        return true
                    }
                } else if (u == undefined || u.length == 0 || f.match(/^javascript:/i)) {
                    return
                } else if ((new RegExp(c + '$', 'i')).test(u) || (new RegExp(u + '$', 'i')).test(c)) {
                    if (i.download.run && i.download.reg.length != 0) {
                        if ((new RegExp(i.download.reg, 'i')).test(a + l)) {
                            o = o.replace(/^https?:\/\//i, '');
                            i.download.useEvent ? e._envTrackevent('download', 'click - ' + c, o, '') : e._envTrackpageview('/virtual/download', o);
                            return true
                        }
                    }
                } else if (u != c) {
                    if (e.isInArray(u, e._envArray) == -1) {
                        if (i.outbound.run) {
                            i.outbound.useEvent ? e._envTrackevent('outbound', 'click - ' + c, u + a + l, '') : e._envTrackpageview('/virtual/outbound', u + a);
                            return true
                        }
                    } else if (e.isInArray(u, e._envArray) != -1) {
                        var h = s.target;
                        if (h != null && h == '_blank') {
                            if ((new RegExp(/_utma=/)).test(l)) {
                                return true
                            }
                            var p = e._envTrkrs[0][0].length == 0 ? '' : _envTrkrs[0][0] + '.';
                            return true
                        } else {
                            return false
                        }
                    }
                }
            }
        };

        waitForAnalytics();
    })()
  }
</script>




<script>
  // Set New Relic custom attributes
  (function () {
    if (typeof newrelic !== 'undefined') {
      newrelic.setCustomAttribute('pageType', 'other')
    }
  })()
</script>

  <script>
    if (typeof Cookiebot !== 'undefined' && Cookiebot.consent && Cookiebot.consent.marketing) {
      enableGoogleTagManager();
    } else {
      window.addEventListener('CookiebotOnAccept', function (e) {
        if (Cookiebot.consent.marketing) {
          enableGoogleTagManager();
        }
      }, false);
    }

  function enableGoogleTagManager() {
    var gtmId = 'GTM-585RXMV';
    // Google Tag Manager Tracking Code
    (function(w,d,s,l,i) {
      w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});
      var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
      j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;
      f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer',gtmId);


    window.addEventListener('load', function() {
      window.dataLayer.push({
        event: 'pinterestReady'
      });
    });
  }
</script>


  <div id="intercom-setup" class="is-hidden" data-view="intercomSetup" data-cookiebot-enabled="true" data-intercom-settings-payload="{&quot;app_id&quot;:&quot;s9exa3j0&quot;}" data-intercom-app-id="s9exa3j0" data-should-shutdown="false" data-should-hide="true"></div>


</body></html>
