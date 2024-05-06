#!/bin/sh

echo "START: Create Google Chrome extension \"bypass-paywalls-chrome\""

echo "STEP 1/7: Setting up document and image file paths."
DOC_FILES="../README.md"
IMG_FILES="../src/icons/bypass.png"

echo "STEP 2/7: Creating Chrome extension directory if it doesn't exist."
CHROME_EXTENSION_DIR="chrome-extension"
mkdir -p $CHROME_EXTENSION_DIR

echo "STEP 3/7: Preparing Chrome manifest and script files with correct paths."
sed 's/src\/.*\///g' ../manifest.json > "$CHROME_EXTENSION_DIR/manifest.json"
sed -i '' 's/updates\.xml/src\/updates\/updates.xml/g' "$CHROME_EXTENSION_DIR/manifest.json"
sed 's/src\/.*\///g' ../src/js/background.js > "$CHROME_EXTENSION_DIR/background.js"
sed 's/\.\.\/js\///g' ../src/html/options.html > "$CHROME_EXTENSION_DIR/options.html"
sed 's/\.\.\/js\///g' ../src/html/popup.html > "$CHROME_EXTENSION_DIR/popup.html"

HTML_FILES="$CHROME_EXTENSION_DIR/options.html $CHROME_EXTENSION_DIR/popup.html"
JS_FILES="../src/js/common.js ../src/js/sites.js ../src/js/contentScript.js ../src/js/options.js ../src/js/version.js $CHROME_EXTENSION_DIR/background.js"
GEN_FILES="$JS_FILES $HTML_FILES $DOC_FILES $IMG_FILES"
CH_FILES="$GEN_FILES ../src/updates/updates.xml"

echo "STEP 4/7: Copying files to Chrome extension directory."
cp $CH_FILES $CHROME_EXTENSION_DIR

echo "STEP 5/7: Renaming JS files in Chrome extension directory."
for file in $JS_FILES; do
    cp $file $CHROME_EXTENSION_DIR/$(basename $file)
done

echo "STEP 6/7: Renaming image files in Chrome extension directory."
for file in $IMG_FILES; do
    cp $file $CHROME_EXTENSION_DIR/$(basename $file)
done

echo "STEP 7/7: Chrome extension files preparation completed."
echo "DONE: Chrome extension files are prepared, check it in folder: $CHROME_EXTENSION_DIR"