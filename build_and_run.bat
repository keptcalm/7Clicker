@echo off
rem Build and launch 7Clicker (Windows)

rem compile sources
javac -target 8 -source 8 -cp "jnativehook-2.0.3.jar;trident.jar" -d bin src\com\ruffian7\sevenclicker\AutoClicker.java src\com\ruffian7\sevenclicker\gui\ClickerGui.java src\com\ruffian7\sevenclicker\gui\RangeSlider.java src\com\ruffian7\sevenclicker\listener\KeyListener.java src\com\ruffian7\sevenclicker\listener\MouseListener.java

rem copy assets into bin
xcopy /Y /E "src\assets" "bin\assets\" >nul

rem optionally create an executable jar
if exist 7Clicker.jar del 7Clicker.jar
jar cfm 7Clicker.jar manifest.txt -C bin .

rem run the program (using classpath or the generated jar)
java -cp "bin;jnativehook-2.0.3.jar;trident.jar" com.ruffian7.sevenclicker.AutoClicker
