# Auto YouTube Download Chart

I use my Chromecast to stream music from YouTube.

Often youtube remove videos from my playlists, due to various reasons, which is frustrating since I'm unable to recover those lost entries.

This chart will periodically (defaults to every 60 minutes) run [youtube-dl](https://github.com/ytdl-org/youtube-dl/) and download new videos added to the playlist specified by the `playlist` value.

# Install
Please see [values.yaml](values.yaml) for additional configurations.

It's advised that you create a playlist of your own and replace the below one with that.

```bash
helm install auto-youtube-dl --namespace auto-youtube-dl . --set playlist=https://www.youtube.com/playlist?list=PLcBvX39C5rUEum5mHo9gbEj0fEGuUvdI4
```
