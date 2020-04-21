'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "5655f9af48d687e1128e970bef64159b",
"/": "5655f9af48d687e1128e970bef64159b",
"icons/Icon-512.png": "3b692e410436426395b2d7c1ff6316b6",
"icons/Icon-192.png": "93eeb48e52adebbe05248dd398f39c81",
"favicon.ico": "012e07444c8e09e90708705e09114f80",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/assets/images/me.jpg": "47d665aa3c74a341694d57b10e7ef396",
"assets/assets/images/bg-light.jpg": "e74790dd2fd20b4bd2e00fd5418539b1",
"assets/FontManifest.json": "5fa2baa1355ee1ffd882bec6ab6780c7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "da0dbcd6a943b511ada3272ef507c519",
"assets/LICENSE": "bcc4ad8c96fd77bf9b38dcb7c9a2ac30",
"main.dart.js": "023848749d2d6516f6241ad98ce23eb5",
"manifest.json": "6888331bc5dd8593764ba3ba59150583"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
