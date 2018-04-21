make_assignment
====

## Description
課題番号、ソースコード、実行結果をまとめたテキストファイルを生成します。

## Demo
生成されるテキストファイルの例 <br><br>
![demo_image](/demo.png)

## Requirement
UNIXコマンドが使用できる環境(シェルスクリプトを利用するため)

## Usage
1. 自分のIDをID.txtに上書きしてください。
2. 課題ファイルのフォーマットはkadai[課題番号].cとしてください。
3. 課題を同じフォルダ上に配置してください。
4. sh makefile.sh [課題番号] [課題ファイルのファイル数]
　 を実行してください。

ex.) sh makefile.sh 1 12
課題1の12個のCファイルをまとめる。