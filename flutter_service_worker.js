'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "327e8fa2fc39a2e2144a3a17a22703c3",
"assets/AssetManifest.json": "af35eb3ed2c2e3749897e422000803e2",
"assets/assets/fonts/sans_bold.ttf": "e2ebf780f846271f822b52d26d24af1d",
"assets/assets/fonts/sans_regular.ttf": "d2d3b740e46522981f945573253b0a1a",
"assets/assets/fonts/sans_semibold.ttf": "ae9703e4b4c70169e32fee2647ddf51e",
"assets/assets/icons/add.png": "515600afd6bec0ebe59d8337ea885055",
"assets/assets/icons/apple_logo.png": "12129e07660e10f9dabc4e914f8864a7",
"assets/assets/icons/app_logo.png": "79150886962d38340bc34e972850171d",
"assets/assets/icons/arrow.png": "dc655d3ce536c221e5645ce7342a8dad",
"assets/assets/icons/bell.png": "6453c4ae276eaa726afbad74e8ba8cc1",
"assets/assets/icons/bg.png": "c3bd887925d6c5a3774a1a4f8fe4e618",
"assets/assets/icons/blog.png": "99bef679420f76a8cd6a0def44e91f98",
"assets/assets/icons/brands.png": "48ca9cb87fd5d56070b286fea17ed1f7",
"assets/assets/icons/campaigns.png": "f1da2f46a3a19dbda43c56718ee0e957",
"assets/assets/icons/cart.png": "0ed01bd27e42920438d21b7a1ba1310b",
"assets/assets/icons/categories.png": "d92c6317b996cbf584882230c565683f",
"assets/assets/icons/changed_password.png": "6c45461d048bc4b80de95a253bbff423",
"assets/assets/icons/chat.png": "da83e0c7456cc7803c151adbecc127fa",
"assets/assets/icons/clubpoint.png": "e76e0cd813bc4f685ecd8e350d91a01b",
"assets/assets/icons/coupon.png": "f5d6473830e35386f9bf2dc887bc74bf",
"assets/assets/icons/download.png": "c212a29b7db5bef17db591b618d8e75d",
"assets/assets/icons/edit.png": "0c3dd38369ef062e8201312364f0ceb4",
"assets/assets/icons/facebook_logo.png": "31b6fa88f927b9d0875fa151458191b7",
"assets/assets/icons/favoriteseller.png": "a0075fb1bc2b8937bf2b451216743bda",
"assets/assets/icons/flash_deal.png": "f45e2ab3f50675e023b00016d7225914",
"assets/assets/icons/google_logo.png": "38ab6c01a302a22a9d915daf86dc976f",
"assets/assets/icons/headphone.png": "7c068dce21706d51ad72309f51fbf7e4",
"assets/assets/icons/heart.png": "b627c9ea9be3112ce3b3e9d7a6bca24f",
"assets/assets/icons/home.png": "e75177c101ae77ccc2837c2547502feb",
"assets/assets/icons/login.png": "59d04b2dc997cd10d51d00690c59632c",
"assets/assets/icons/logout.png": "f0d321e44a9ccfb9e8ba96b496f242bc",
"assets/assets/icons/messages.png": "601768bc035c8cc4b76090f6ba5065e9",
"assets/assets/icons/minus.png": "27dab12e4e5b9ab84f090f573a90b6f8",
"assets/assets/icons/more.png": "5006fd2a6d47c6690ff902d83efbfda2",
"assets/assets/icons/o-hamburger.png": "450426f1706329312d434f05df862581",
"assets/assets/icons/order.png": "00cde56011b748dae905cc94fad13363",
"assets/assets/icons/orders.png": "f36fb95d4e48c5da09bee61e43cbcdc4",
"assets/assets/icons/placeholder.png": "6d3ed7856a1e2493498db73dc2d25332",
"assets/assets/icons/placeholder_rectangle.png": "a48d706b542aba45e04710eaba883fa1",
"assets/assets/icons/plus.png": "2829b677235d9532b95ae8c63c1cbca8",
"assets/assets/icons/points.png": "1a9116a03b499737799c0c32b70f82cf",
"assets/assets/icons/profile.png": "4a88358e49338c6006014a42e775c53b",
"assets/assets/icons/refund.png": "b5426ec6b94f8ead8f799a18c7d2046f",
"assets/assets/icons/search.png": "1b154fe8e54178caccc7ec4fe53891e0",
"assets/assets/icons/shop.png": "dcbfbf8a9ff77cac91b4e71b0b02c3bc",
"assets/assets/icons/splash_login_registration_background_image.png": "49fb14a48f7ec9f51b8a5ea460003452",
"assets/assets/icons/square_logo.png": "97111a44f63a3338f8288b3896b6a905",
"assets/assets/icons/todays_deal.png": "3cd424a1f9ccd80d6a63e94f5a4e6128",
"assets/assets/icons/top_categories.png": "61f437a5c28bfba1cc5b74b305fc23d7",
"assets/assets/icons/top_sellers.png": "1677993653d4479123a66d620ab25a7a",
"assets/assets/icons/trash.png": "5f241d6f04f5fdf899461749c02e0816",
"assets/assets/icons/twitter_logo.png": "32057838ba0763de885192ab34ab50dd",
"assets/assets/icons/wallet.png": "b89df85a3f9ad88140f0d0e6c99935fc",
"assets/assets/icons/white_tick.png": "040db7e9222070b910588dddab26e0bf",
"assets/assets/icons/wholesale.png": "5cd8abdd09a9a099e9851c38c02230d2",
"assets/assets/images/b1.jpeg": "85e4dbfdd59eeabda39cfa16717f7bd8",
"assets/assets/images/b10.jpeg": "5b2a1e353bae8455cd23610f73cce911",
"assets/assets/images/b2.jpeg": "a6667790c3d1251a78614feaeb4dbebf",
"assets/assets/images/b3.jpeg": "05a6f7216b5001755e168f9d4c0e4aad",
"assets/assets/images/b4.jpeg": "402da2d0224c02eadf1a54470d9671cd",
"assets/assets/images/b5.jpeg": "fe485c415a1c285f2191cef223908b2e",
"assets/assets/images/b6.jpeg": "e304db7b192dc8c590fde6a764da87bf",
"assets/assets/images/b7.jpeg": "66291bb0ab58cbf9af758807b8321918",
"assets/assets/images/b8.jpeg": "945597fce4abe324d8530446967afdb1",
"assets/assets/images/b9.jpeg": "314ee62f31a929e68b7785a6fde0ef64",
"assets/assets/images/cod.png": "f809a637f88627696e1624fd41b298d6",
"assets/assets/images/fc1.jpeg": "7d79024f3b210297068f39f5222261bd",
"assets/assets/images/fc10.jpg": "1fe2fe19903c6379aea27a7a685cae37",
"assets/assets/images/fc2.jpeg": "11ddd5bf6fc5128d4b06d3af07b2daa5",
"assets/assets/images/fc3.jpeg": "8a80035317f6695d51e1eed6dafaa15e",
"assets/assets/images/fc4.jpeg": "e2358bbe6d36bbaad17e23bdfacbbaf4",
"assets/assets/images/fc5.jpeg": "acc7a10bbeab464f2353c7ba63812ef9",
"assets/assets/images/fc6.jpeg": "1a9be3e502cad79fa300a1394ecba53e",
"assets/assets/images/fc7.jpeg": "535294e16cbb21635bdaa72927fd5544",
"assets/assets/images/fc8.jpeg": "546398461543310d07baf18914db87e4",
"assets/assets/images/fc9.jpeg": "841f4f5fefb0e12acdc833e3f4fc2e7b",
"assets/assets/images/fd1.jpg": "aa7a15f76efa09e94fd2e56d8e334c92",
"assets/assets/images/fd2.jpg": "0d8883828102b689a58f5da8a2596cba",
"assets/assets/images/fd3.jpg": "30b8f704d103c7b7236b1ff6e5ae4d1d",
"assets/assets/images/flutterwave.png": "392bd1dd42d4c69d3f74152b63705dd7",
"assets/assets/images/instamojo.png": "aebe1a685d77b06a102deca6b0b66e86",
"assets/assets/images/iyzico.png": "1018daf1554ecbc42ed30f01bb144aaa",
"assets/assets/images/mpesa.png": "001032c4d8117a59de843ec0a3f29330",
"assets/assets/images/ngenius.png": "41ce67898cf0225c4b722adf7d335f1b",
"assets/assets/images/p1.jpeg": "3c33c627ca82308e43bbb2014dabb1b9",
"assets/assets/images/p2.jpeg": "39d7ebe2ad79c45e470ab107dffe71a2",
"assets/assets/images/p3.jpeg": "41a491c17f17b3dc0a1bd2f060e8c5a6",
"assets/assets/images/p4.jpeg": "abb299d74721873ea10a24b82e18bddf",
"assets/assets/images/p5.jpeg": "013a2974f169fa5f82fdfbb55a8fab2d",
"assets/assets/images/p6.jpeg": "8d7daeeae29a8b7af3ad0631250ca84e",
"assets/assets/images/p7.jpeg": "3608e7c3e7d01da8ac9f15a2fc5d421a",
"assets/assets/images/payfast.png": "28d3fb1529173f64e9a53e964f3f69f4",
"assets/assets/images/payhere.png": "53f83af98e3611e749891e5ee1c90504",
"assets/assets/images/paypal.png": "4b973f1e684fb296c63d201755c955b8",
"assets/assets/images/paystack.png": "d7d0a34960488cfd9de186312845b268",
"assets/assets/images/paytm.jpg": "8c99f8c944d538df8a3e6e19f32c3c91",
"assets/assets/images/pi1.jpg": "e1d1738a14ee4f620c56cc43954d691a",
"assets/assets/images/pi2.jpg": "9fbb7e86fbf7c9ace7cd92ba453642b8",
"assets/assets/images/pi3.jpg": "f8f7ec4e3e3ed067e6ea8cb4ad646f41",
"assets/assets/images/pi4.jpg": "100b89bfc07bbc3695476388218b6c3c",
"assets/assets/images/pi5.jpg": "9b14659e353fbb5add97679e2556390d",
"assets/assets/images/pi6.jpg": "8106e556fb0693acbafe0acec2f1a47d",
"assets/assets/images/profile_image.png": "605ab851b1afa52f81cd67dd6158dcb1",
"assets/assets/images/profile_image_joya_ahsan.jpg": "0f94a8740da4a0d8da48f2a3159856f0",
"assets/assets/images/rave_payment.png": "585d1284dea299de84079ae12a608438",
"assets/assets/images/rozarpay.png": "efd3febe51c38c0d236bd9cbbe2246d0",
"assets/assets/images/s1.jpg": "222a86c428000c4aed299e477a5abd29",
"assets/assets/images/s10.jpg": "6941a9803d33a5927351bc2d2390aed0",
"assets/assets/images/s11.jpg": "69be9e9e485a80b0f473cfb901f0696a",
"assets/assets/images/s12.jpg": "629bb0b77c11e294557175c1bc1c92bd",
"assets/assets/images/s2.jpg": "418b9696fec1683918ccac84070a380e",
"assets/assets/images/s3.jpg": "3b4a92cfa6c4c0259189bb99256cef89",
"assets/assets/images/s4.jpg": "91495356fdff519237e3077ee08ab85d",
"assets/assets/images/s5.jpg": "784e032d5b71fe6ef7283af158802b15",
"assets/assets/images/s6.jpg": "daaec73c81d10f8f8b75e6a9e3f82de5",
"assets/assets/images/s7.jpg": "f5a4975e3d05197404395eabfefdbfe0",
"assets/assets/images/s8.jpg": "5affb6bd1bf7e855b735c2e2c5646076",
"assets/assets/images/s9.jpg": "2dd0113d2133cfd4ba4ac9a7a719881b",
"assets/assets/images/save.png": "c964727160fd4fbe4cf4362f5300a40c",
"assets/assets/images/slider_1.png": "7b364dbed7fd3ba554278d59450570ed",
"assets/assets/images/slider_2.png": "85794ae45b9f0a62f6f6c9c6f30b3e8b",
"assets/assets/images/slider_3.png": "e1c0b65a29aa8ff8aa2809c04908ae99",
"assets/assets/images/slider_4.png": "7ebea534b3d59ec73d6c00295912901d",
"assets/assets/images/ss1.jpg": "7a47efaabb9f22d3c14dcea3927a1c0c",
"assets/assets/images/ss2.jpg": "c0707b6fe6ae5f842d3ee3fa3d97e127",
"assets/assets/images/ss3.jpg": "3090c0a169d8ce97dd2a1a1d61895208",
"assets/assets/images/ss4.jpg": "4e14528b8249759850c58d10f33fdb31",
"assets/assets/images/sslcommerz.png": "a499b01bacc8ec93a745e5cba6d20291",
"assets/assets/images/stripe.png": "ca5dd47095af7b66bda6f3824dfef3b5",
"assets/assets/images/twocheckout.png": "0ba8aa39861f077135ca52232c443a2b",
"assets/assets/images/vogue.png": "77225594e50a220674e1f2927dabf8ca",
"assets/assets/images/wallet.png": "e97d6bd863fd489b6fbb72ccb2106084",
"assets/FontManifest.json": "e0b7c6e734d500cafc3a3e34c14bcfad",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/lib/services/category_model.json": "cb695bef1f395790984200b50eed6689",
"assets/NOTICES": "b82dd08c5ecace198be1fa9030730ae1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "d10ac4ee5ebe8c8fff90505150ba2a76",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "21b85f10efbe1341f0c959312d91e37c",
"/": "21b85f10efbe1341f0c959312d91e37c",
"main.dart.js": "73f755ffe2ff6ac2ff9a3db2edb3c17a",
"manifest.json": "b725b45061553227742635178bfedd7f",
"version.json": "f5273af2608c52a080f360ea9f80d026"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
