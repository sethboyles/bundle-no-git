The gems in the subdirectories were packaged with the following commands:

```
bundle config set cache_all true
bundle __BUNDLER_VERSION_  package --all-platforms --no-install
```

Run `./rebuild-and-run.bash` to observe how `bundle _2.5.17_ install --local` without git available fails and `bundle _2.5.16_ install --local` without git succeeds.

