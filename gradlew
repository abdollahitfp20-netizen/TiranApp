#!/bin/sh
APP_HOME="$(cd "$(dirname "$0")" && pwd -P)"
cd "$APP_HOME"
DEFAULT_JVM_OPTS='"--add-opens=java.base/java.util=ALL-UNNAMED" "--add-opens=java.base/java.lang.invoke=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.prefs/java.util.prefs=ALL-UNNAMED"'
exec java $DEFAULT_JVM_OPTS \
  -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" \
  org.gradle.wrapper.GradleWrapperMain "$@"
