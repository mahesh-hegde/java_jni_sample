## Instructions

This is the module path where you need to put all java stdlib and android sources.

Running something like in this directory may work.

```bash
jar -xvf $ANDROID_SDK_ROOT/platforms/android-28/android-stubs-src.jar
mv src/* .
```

This will create a directory structure where the entire java.* and android.* package heirarchy is under this base module.

After that, invoke jnigen as usual.

```bash
dart run jnigen --config jnigen.yaml
```
