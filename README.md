(2020/06/04)

# SmartOrderApp
**飲食店などでスマホを使って注文するためのアプリ**
**できるだけユーザー側での操作を減少して使いやすさを重視する**

# 開発環境

|language|version|
|:--------|:-------|
|Docker|19.03.12|
|Ruby|2.7.1|
|Ruby on Rails|6.0.3.2|
|MySQL|8.0|
|jQuery|4.4.0|


## メリット
---
### ユーザー側
  - 注文待ちの減少
  - スマホで決済が可能になり、レジ待ちの減少
  - 細かなリクエストに対応し、店員の呼出減少
  - フィードバックをしやすくなる
  - 会員登録による顧客固定化

### 管理者側
  - 商品のイメージ写真などを多数表示できるため、商品アピールをしやすくなり、売上向上
  - 従業員の直接受注が減少するため、人件費削減
  - マニュアルが作りやすくなるため、教育コスト削減
  - 人的ミスの減少（支払い金額、受注）
  - シームレスに注文を受けとり、厨房への伝達ロス、伝達ミスの減少
  - 売上分析、時間帯別客単価分析、商品別出荷分析、在庫管理...など、経営分析の自動化による事務作業減少
  - 分析結果の可視化により、従業員のやる気の向上
  - リクエストや、フィードバックを受け取りやすくなり、商品開発やサービス向上に専念できる
<br>

## 機能詳細
---
### ユーザー側
  - テーブルにあるQRコードを読み取り、注文サイトへ移動
    - 新たにQRコードを読み取る度に新規登録

  - メニュー一覧
  - メニュー詳細
  - 注文個数選択
  - 支払い
    - QRコードはテーブルNo情報に紐付いているため、支払いも紐付け可能
    - 支払い方法の選択が可能[現金決済、クレジット決済、電子決済]
  - 多言語化
    - [日本語、韓国語、中国語、英語]
  - アンケート
  - 新規登録で割引

### 管理者側
  - ユーザー管理
  - 受注
  - メニュー追加
  - 従業員管理
    - オペレーション管理
  - 顧客管理
  - 売上管理
  - 従業員の待ち時間の減少
  <!-- - 情報共有 -->
  <!-- - 伝票共有 -->
<br>

## デメリット・対策
---
  - モバイルブラウザだと使いにくい可能性
    > - 管理者側のモバイルアプリ化
    > - 客用のiPad貸出
  - お年寄りなどが拒否反応を起こす可能性
    > - 操作の簡略化（簡単モード切替機能実装？）
    > - 操作方法の説明を分かりやすくする
  - 充電減少の指摘、速度制限の指摘
    > - wifi、充電設備、iPad貸出
  - フィードバックによる就業意欲減少
    > - 考え中
  - 商品説明がありすぎても微妙かもしれん






- データの正規化
- 領収書をPDF変換してエクスポートする



QRにテーブルナンバーを入力したインスタンスを持たせたやつを持たせる
