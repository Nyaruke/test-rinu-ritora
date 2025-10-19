# TAB-A04-BR3 LineageOS 14.1 デバイスツリー

Basic   | 仕様
-------:|:-------------------------
CPU     | ARM Cortex-A35 Quad-Core MT8167B (arm64-v8a)
GPU     | PowerVR GE8300
メモリ  | 2GB LPDDR3
ストックROMバージョン | Android 7.0.0
ストレージ | 16GB (eMMC)
ディスプレイ | 抵抗膜方式 1280x800

注意: このデバイスツリーはTWRP用ではありません。また、LineageOS 14.0 (Android 7.0)用ではありません。

# 現在の状況
## LineageOS本体
- 起動しません。
- adb logcatなどを見ると、ueventdが開始したあとにsurfaceflinger等のサービスが立て続けにkilled by signal ~と出て死にます。

## LineageOS Recovery
- 長らくの間動作不能でしたがようやく復旧しました。
- adb sideloadでLineageOSのOTAの.zipファイルがインストール可能です。(MagiskやStockROMはフラッシュ不可) 内部ストレージから選択してインストールは正常に動きません。
- ずっと音量-ボタンを押してスクロールし続けると表示されるテキストがレインボーになるバグがあります。

# 使用方法
### ダウンロードと配置
すでにLineageOSのソースコードをダウンロードしている前提とします。Lineageソースの最上位ディレクトリで次を実行:
```sh
git clone https://github.com/Nyaruke/android_device_sts_a04br3 device/sts/a04br3
```

### ビルドを実行
```sh
. build/envsetup.sh
lunch lineage_a04br3-userdebug
brunch a04br3
```

### オプション
ビルド支援スクリプトである`try-build.sh`を使うと、ビルド中に発生する可能性があるエラーを一部対策できるかもしれません。このスクリプトは、いくつかビルド時に必要と思われる環境変数を自動で設定すると同時に、envsetup.shやbrunchなどを自動で実行します。
```
cp device/sts/a04br3/build-utils/try-build.sh ./ && rm -r device/sts/a04br3/build-utils
chmod +x try-build.sh
./try-build.sh <オプション>
```

>スクリプト引数<br>
何も引数を設定しない場合は、フルビルドを行いTWRP等でフラッシュ可能なOTAイメージをビルドします。<br>
`--recoveryimage` recovery.imgだけをビルドします。<br>
`--bootimage` boot.imgだけをビルドします。<br>
`--clean` 既存のビルドディレクトリを削除します。


### ♥その他の事項♥
- LineageOS14.1ではビルド時に[jack](https://xdaforums.com/t/discussion-how-to-fix-jack-server-failing-to-build-with-error-try-jack-diagnose.3575179/)と[OpenJDK8のセキュリティ](https://plaza.rakuten.co.jp/solarisintel/diary/202110120000/)に関するエラーが出ます。


# 注意
- このデバイスツリーは実験的なものです。全て自己責任で使用してください。
- Nyarukeはこれを使用して発生した文鎮化などの結果的な損害について責任を負いません。