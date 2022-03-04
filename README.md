This is a reproducer for a jpackage issue involving `--add-launcher` and `--runtime-image`.

Execute:

```
javac -d ./mods module-info.java example/Main.java example/Secondary.java
jlink --module-path ./mods --add-modules example --output ./image
jpackage --dest pkg --name main --module example/example.Main --runtime-image ./image --add-launcher secondary=./secondary.properties
```

The `jpackage` command works with JDK-16 but [fails with JDK-17](https://github.com/SSCCE/jpackage-launcher-issue/runs/5422586293?check_suite_focus=true).
