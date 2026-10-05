@rem Gradle startup script for Windows
@if "%DEBUG%"=="" @echo off
@rem Set local scope for the variables with windows NT shell
set APP_HOME=%~dp0
set APP_HOME=%APP_HOME:~0,-1%
@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome
set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute
goto error
:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:~0,-1%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe
:execute
set DEFAULT_JVM_OPTS="--add-opens=java.base/java.util=ALL-UNNAMED"
%JAVA_EXE% %DEFAULT_JVM_OPTS% -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*
:end
