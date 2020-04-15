'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "876d83a1fe0dee0f670e50af28cf6521",
"/": "876d83a1fe0dee0f670e50af28cf6521",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/assets/images/me.jpg": "47d665aa3c74a341694d57b10e7ef396",
"assets/assets/images/bg-light.jpg": "e74790dd2fd20b4bd2e00fd5418539b1",
"assets/FontManifest.json": "5fa2baa1355ee1ffd882bec6ab6780c7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "da0dbcd6a943b511ada3272ef507c519",
"assets/LICENSE": "bcc4ad8c96fd77bf9b38dcb7c9a2ac30",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "d7a89260dbc7028c74f793e3950ae9b8",
"manifest.json": "25ccdb0fe54c07a1effad6ff9ec0ee6b"
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
