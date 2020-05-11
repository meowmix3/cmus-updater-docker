I use this Dockerfile to update my cmus library.  All of my music is stored on my server, and I use **sshfs** to access it over a network.

Periodically I will tag or add music to my music folder and I'll want to clear and update my library.  Doing this over **sshfs** is way too slow to be usable, so it's easier to do it server side and update my library with git or Syncthing.

I run:

```
00 */6 * * * docker exec -t cmus-updater /update.sh
```

...in my crontab to keep it updated.

I went with the `debian:buster-slim` image because for whatever reason, the cmus in the `alpine` image would crash while updating my music.
