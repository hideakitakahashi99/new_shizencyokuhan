class Product < ApplicationRecord
    belongs_to :staff_member
    has_many :line_items
    has_many :orders, through: :line_items
    has_many :addresses, through: :line_items
    has_one :staff_addresses, through: :staff_member
    
    before_destroy :ensure_not_referenced_by_any_line_item
    
    validates :stock, :method, :price, :category, :description, presence: {message: "入力して下さい"}
    validates :price, :stock, :net, numericality: {only_integer: true, greater_than_or_equal_to: 0, message: "0以上の半角数字を入力して下さい"}
    #validates :stock, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    #validates :net, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    
    
    mount_uploader :productimg, ProductimgUploader
    
    METHOD_NAMES = %w( 完全無肥料／農薬不使用栽培 農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞)
    CATEGORY_NAMES = %w(
    アズキ／小豆 アスパラガス／竜髭菜 インゲンマメ／隠元豆
    エダマメ／枝豆 オクラ／秋葵 コメ／米 カブ／蕪 カボチャ／南瓜 カリフラワー／花甘藍
    キャベツ／甘藍 キュウリ／胡瓜 グリーンピース／青豌豆 ケール／緑葉甘藍 ゴボウ／牛蒡
    コマツナ／小松菜 コムギ／小麦 コンニャクイモ／蒟蒻芋 サツマイモ／甘藷
    サトイモ／里芋 サトウキビ／砂糖黍 サヤインゲン／莢隠元 サヤエンドウ／莢豌豆
    シシトウ／獅子唐 シソ／紫蘇 ジャガイモ／馬鈴薯 シュンギク／春菊 ショウガ／生姜
    シイタケ／椎茸 シイタケ(カンソウ)／椎茸(乾燥) スイートコーン／唐蜀黍
    ズッキーニ／西葫芦 セロリ／和蘭三葉 ゼンマイ／薇 ソバ／蕎麦
    ソラマメ／空豆 ダイコン／大根 ダイズ／大豆 タケノコ／竹の子 タマネギ／玉葱
    チンゲンサイ／青梗菜 トマト／蕃茄 ナス／茄子 ナバナ／菜花 ニジョウオオムギ／二条大麦
    ニラ／韮 ニンジン／人参 ニンニク／大蒜 ネギ／葱 ハーブ類／野草 ハクサイ／白菜 パセリ／和蘭芹
    ハダカムギ／裸麦 ビーツ／火焔菜 ピーマン／甘唐辛子 ヒョウタン／瓢箪 ブロッコリー／芽花椰菜
    ホウレンソウ／法蓮草 ミツバ／三つ葉 ミニトマト ミョウガ／茗荷 モチゴメ／もち米 モヤシ／萌やし ヤマノイモ／山の芋
    ラッカセイ／落花生 レタス／萵苣 レンコン／蓮根 ロクジョウオオムギ／大麦 ワサビ／山葵
    ワラビ／蕨
    
    イチゴ／苺 イチジク／無花果 イヨカン／伊予柑 ウメ／梅 キウイフルーツ／彌猴桃 クリ／栗
    スイカ／西瓜 スモモ／李 ナシ／梨 ナツミカン／夏蜜柑 パイナップル／鳳梨 ハッサク／八朔
    ビワ／琵琶 ブドウ／葡萄 ブルーベリー／藍苺 マンゴー／菴羅 ミカン／蜜柑 メロン／舐瓜
    モモ／桃 ユズ／柚子 リンゴ／林檎 レモン／檸檬
    
		  BOX販売 その他
          )
          
          UNIT_NAMES = %w(g kg ml l)
          
          PROCESSED_GOODS = %w(麺類・パスタ 調味料 パン・ジャム シリアル 乾物・粉類 缶詰・瓶詰 梅干し・漬物 卵 飲料 )
          
          def ensure_not_referenced_by_any_line_item
              if line_items.empty?
                  return true
                  else
                  errors.add(:base, '品目が存在します')
                  return false
              end
          end
          
          def self.decrease_stock(product)
          product.stock -= 1
          product.save
end

def self.increase_stock(product)
product.stock += 1
product.save
end

def self.increse_all(products)
products do |product|
    product.stock +=1
    product.save
end
end





end
