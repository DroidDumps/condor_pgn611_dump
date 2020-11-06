#!/bin/bash

cat system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> system/app/WebViewGoogle/WebViewGoogle.apk
rm -f system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat system/app/Chrome/Chrome.apk.* 2>/dev/null >> system/app/Chrome/Chrome.apk
rm -f system/app/Chrome/Chrome.apk.* 2>/dev/null
cat system/priv-app/GmsCore/oat/arm64/GmsCore.odex.* 2>/dev/null >> system/priv-app/GmsCore/oat/arm64/GmsCore.odex
rm -f system/priv-app/GmsCore/oat/arm64/GmsCore.odex.* 2>/dev/null
cat system/priv-app/GmsCore/oat/arm/GmsCore.odex.* 2>/dev/null >> system/priv-app/GmsCore/oat/arm/GmsCore.odex
rm -f system/priv-app/GmsCore/oat/arm/GmsCore.odex.* 2>/dev/null
