## LFLiveKit

[Original LFLiveKit](https://github.com/LaiFengiOS/LFLiveKit)

原作者的LFLiveKit对RTMPS的支持有些问题，所以做了以下更改来支持RTMPS访问。

1. [Edit rtmp.c file](https://drive.google.com/open?id=0B6i-kpwQxpkpVUtTS2RLc214eUk)
2. [Edit handshake.h file](https://drive.google.com/open?id=0B6i-kpwQxpkpcTZBN3lBZlhVWWs)
3. [Edit rtmp.h file](https://drive.google.com/open?id=0B6i-kpwQxpkpYjhBcFpUN0dwSjQ)
4. Uncomment `NO_CRYPTO` in `rtmp.h`.

另外，我们的应用场景中不需要GPUImage, 所以移除了GPUImage.


