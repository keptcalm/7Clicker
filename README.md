# 7Clicker

Simple Java auto-clicker application built with Swing.

## Requirements

- Java 8 (or later) installed and on `PATH`
- `jnativehook-2.0.3.jar` and `trident.jar` placed in the project root alongside `src` and `bin`

## Building

Open a terminal in the repository root and run:

```powershell
# compile all source files, target Java 8, and output to bin/
javac -target 8 -source 8 -cp "jnativehook-2.0.3.jar;trident.jar" -d bin src\com\ruffian7\sevenclicker\*.java src\com\ruffian7\sevenclicker\gui\*.java src\com\ruffian7\sevenclicker\listener\*.java

# copy assets into bin/ so they get packaged
Copy-Item "src\assets\*" "bin\assets" -Recurse -Force
```

## Running

From the project root:

```powershell
# run directly from bin (useful during development)
java -cp "bin;jnativehook-2.0.3.jar;trident.jar" com.ruffian7.sevenclicker.AutoClicker

# or build a jar and run the jar
jar cf 7Clicker.jar -C bin .
java -cp "7Clicker.jar;jnativehook-2.0.3.jar;trident.jar" com.ruffian7.sevenclicker.AutoClicker
```

The application loads its images from the classpath (`assets/` directory) so the jar must be created after copying the assets.

## Useful scripts

A batch file `build_and_run.bat` is included to automate the steps.

## Version control

The `bin/` folder and any generated JAR files are ignored by Git.

---
Feel free to customize colors or other UI elements in `ClickerGui.java` and rebuild.