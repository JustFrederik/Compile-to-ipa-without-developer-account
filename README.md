# Xcode-to-ipa-without-developer-account
If you don't pay apple you can't compile ipa files from Xcode so I created a small script to make it possible

$SCHEME is optional(will use project name as default)

./workspace_build $PROJECT_PATH $SCHEME
<br>
./project_build $PROJECT_PATH $SCHEME
<br>
<br>
Example:
```
./workspace_build.sh .
./project_build.sh MyProject
```

Based on https://stackoverflow.com/questions/72716506/how-to-create-an-ipa-without-having-developer-account-in-ios-in-react-native-in
