# Original porject

[bypass-paywalls-chrome by @iamadamdev](https://github.com/iamadamdev/bypass-paywalls-chrome) 

## Dev process - `buils-folder.sh` for files in folder

1. Go go folder with script:

```
cd build
```

2.  Check Permissions: Ensure that the script `build-folder.sh` has execute permissions

```
ls -l build-folder.sh
```
If the permissions don't include execute permission (which is represented by an 'x' in the output), you can add it using the command:

```
chmod +x build-folder.sh
```

4. Execute the Script: Once the permissions are set, you can run the script by typing:

```
./build-folder.sh
```

Wait for Completion: Depending on what the script does, it may take some time to complete. You should see output in the terminal indicating the progress of the script.

## Dev process - `buils.sh` for archive

1. You have 7zip installed: 

```
brew install p7zip
```

2. Go go folder with script:

```
cd build
```

3.  Check Permissions: Ensure that the script `build.sh` has execute permissions

```
ls -l build.sh
```
If the permissions don't include execute permission (which is represented by an 'x' in the output), you can add it using the command:

```
chmod +x build.sh
```

4. Execute the Script: Once the permissions are set, you can run the script by typing:

```
./build.sh
```

Wait for Completion: Depending on what the script does, it may take some time to complete. You should see output in the terminal indicating the progress of the script.