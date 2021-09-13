# テーブル設計

## users テーブル

| Column                 | Type     | Options                   |
| ---------------------- | -------- | ------------------------- |
| name                   | string   | null: false               |
| email                  | string   | null: false, unique: true |
| encrypted_password     | string   | null: false               |

### Association

- has_many :messages
- has_many :items
- has_many :movies

## messages テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | -------------------------------|
| message                | string     | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ | 
| item                   | string     | null: false                    |
| content                | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## movies テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | -------------------------------|
| title                  | string     | null: false                    |
| youtube_link           | string     | null: false                    |
| description            | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

- belongs_to :user
