'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "61e00820d0f17b76f6af844db51f44dd",
"assets/assets/destinies.json": "6d0f5c9cddc6601039032f4575826840",
"assets/assets/k1_tms/Mapnik3/18/95195/111914.png": "6c66ec422d714e3de1d0c12baf3333a1",
"assets/assets/k1_tms/Mapnik3/18/95195/111915.png": "7b4997630c3bb8765adc9d759d95c68a",
"assets/assets/k1_tms/Mapnik3/18/95195/111916.png": "a9dac87e67b223da25768386544dcfc6",
"assets/assets/k1_tms/Mapnik3/18/95196/111914.png": "30d92b601de622030e7acf6c8365e006",
"assets/assets/k1_tms/Mapnik3/18/95196/111915.png": "dfc1952354ac90ad48197a33dd2bade7",
"assets/assets/k1_tms/Mapnik3/18/95196/111916.png": "2cb8e152ba42b845858ebb876e5e5832",
"assets/assets/k1_tms/Mapnik3/18/95197/111914.png": "72d67e4581ac57e5c80b7e8038302777",
"assets/assets/k1_tms/Mapnik3/18/95197/111915.png": "2e8571aaf11e9b3b4a93572c4dd792c9",
"assets/assets/k1_tms/Mapnik3/18/95197/111916.png": "05d9bf34dd4a7c423bd0ff7e713375e4",
"assets/assets/k1_tms/Mapnik3/19/190391/223829.png": "9ca37e97df6e4bdbd1ed9e06cffa3ab1",
"assets/assets/k1_tms/Mapnik3/19/190391/223830.png": "2462bcca6da82310433ac441b005f591",
"assets/assets/k1_tms/Mapnik3/19/190391/223831.png": "87def241124021916f54c8b094fccaa7",
"assets/assets/k1_tms/Mapnik3/19/190391/223832.png": "d8b254f8f9929209ea4fdd6facca2ab6",
"assets/assets/k1_tms/Mapnik3/19/190392/223829.png": "ada2e7ffac1fd5a7d23f46331b296197",
"assets/assets/k1_tms/Mapnik3/19/190392/223830.png": "e059bce4074220548ec7417867eded47",
"assets/assets/k1_tms/Mapnik3/19/190392/223831.png": "b379f07de50542ddbc755d48579dd517",
"assets/assets/k1_tms/Mapnik3/19/190392/223832.png": "7fa19be628b2ea81a34f483ebc823b5e",
"assets/assets/k1_tms/Mapnik3/19/190393/223829.png": "4fddfa4aab794233ed263b0bd98e2d87",
"assets/assets/k1_tms/Mapnik3/19/190393/223830.png": "b369519525cb80fd5302ff85ed151155",
"assets/assets/k1_tms/Mapnik3/19/190393/223831.png": "daf606a55c70225034b3749216eaa750",
"assets/assets/k1_tms/Mapnik3/19/190393/223832.png": "756d0e52db9fd794ec6f5950445ca408",
"assets/assets/k1_tms/Mapnik3/19/190394/223829.png": "78b387741a6e66f601c3ea45a29f0aba",
"assets/assets/k1_tms/Mapnik3/19/190394/223830.png": "40762f84d2f553721633ca3a461b9b1a",
"assets/assets/k1_tms/Mapnik3/19/190394/223831.png": "7f7ecb6e5fc18208d96fc6f99b7ce875",
"assets/assets/k1_tms/Mapnik3/19/190394/223832.png": "959b646443d7a48f716c07d935fdd22e",
"assets/assets/k1_tms/Mapnik3/20/380783/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380783/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380783/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380783/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380783/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380783/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380784/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380785/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380786/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380787/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380788/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447659.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447660.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447661.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447662.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447663.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/20/380789/447664.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761566/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761567/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761568/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761569/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761570/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761571/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761572/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761573/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761574/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761575/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761576/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761577/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895319.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895320.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895321.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895322.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895323.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895324.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895325.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895326.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895327.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/k1_tms/Mapnik3/21/761578/895328.png": "a8d34f13906fcd00553ca97849e8e663",
"assets/assets/map_mask.png": "a2aa139f2eb15255034fa1185ae33de8",
"assets/assets/qr_wia.png": "3092253707c20192a9c656624237f2c4",
"assets/assets/ufpr.png": "9340832dff38029470bdad3b94cab1c0",
"assets/assets/ufpr_extc.png": "5c1cd3ec3485ba4acf31953aa0eeca13",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "850fd8acb1ab3c3479057d00d2c2978e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "d073695f17547f733f5dd82c89b4d4d1",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ca5bd0eb3400fd25b671984795e802b7",
"/": "ca5bd0eb3400fd25b671984795e802b7",
"main.dart.js": "576ec45a62a47b7c13b280a66f02c2f1",
"manifest.json": "dabc6edcc48609f02b123804e4bcc797",
"version.json": "89dec279851bb863a2079bed7c788575"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
