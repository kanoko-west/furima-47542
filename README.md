# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| last-name          | string | null: false |
| first-name         | string | null: false |
| last-name-kana     | string | null: false |
| first-name-kana    | string | null: false |
| birth-date         | date   | null: false |

has_many :items
has_many :orders


## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| item-name          | string | null: false |
| item-info          | text | null: false |
| item-category      | integer | null: false |
| item-sales-status  | integer | null: false |
| item-shipping-fee-status| integer | null: false |
| item-prefecture    | integer | null: false |
| item-scheduled-delivery| integer | null: false |
| item-price         | integer | null: false |

belongs_to :user
has_one :orders



## orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true, unique: true |
 #購入画面はどこまでカラム作るのか？

belongs_to :user
belongs_to :item