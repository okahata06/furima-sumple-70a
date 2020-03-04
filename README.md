
# freemarket_sample_70a DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|name|string|null:false|
|name_kana|string|null:false|
|sex|string|null:false|
|tel|string|null:false|
|email|string|null: false|
|password|string|null: false|
## Association
- has_many :Products
- has_many :Comments
- belongs_to: Address
- belongs_to: Card
- belongs_to: Sns_credential

## Adresses
|Column|Type|Options|
|------|----|-------|
|user_id|integer||null:false, foreign_key: true|
|zip_code|string|null:false|
|prefecture|string|null:false|
|city|string|null:false|
|street_num|string|null:false|
|building|string|  |
## Association
- belongs_to: User

## Cards
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|customer_id|integer|null:false|
|card_id|integer|null:false|
|token|string|null:false|
## Association
- belongs_to: User


## Sns_credentials
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|u_id|integer|null:false|
|provider|string|null:salse|
## Association
- belongs_to: User

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|item_name|string|null:false|
|detail|string|null:false|
|category|string||
|price|integer|null:false|
|item_status|string|null:false|
|postage_cost|integer|null: false|
|ship_area|string|null:false|
|ship_method|string|null: false|
|ship_date|string|null: false|

### Association
- belongs_to :User
- has_many :Images
- has_many :Main_tags
- has_many :Comments

## Main_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|main_tag|string|null: false|
### Association
- has_many : Sub_tags
- belongs_to :Product

## sub_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|sub_tag|text|null: false|
### Association
- belongs_to : Main＿tag
- has_many : Sub2_tags

## sub2_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|sub_tag2|text|null: false|
### Association
- belongs_to : Sub_tag

##  Images
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|integer||
### Association
- belongs_to : Product

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :User
- belongs_to :Product

