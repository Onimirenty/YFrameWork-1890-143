setlocal
cd framework
javac -source 1.8 -target 1.8 -d classes *.java
cd classes
jar -cf framework.jar ./
move framework.jar ../../testeFramework/WEB-INF/lib/
cd ../../testeFramework/java/
javac -source 1.8 -target 1.8 -cp ../WEB-INF/lib/framework.jar -d . Emp.java
move personne ../WEB-INF/classes/
cd ../
jar -cvf ../../../testeFramework.war ./
pause
