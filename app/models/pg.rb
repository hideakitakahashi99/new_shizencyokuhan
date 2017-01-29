class Pg < ActiveRecord::Base
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
    
    
    mount_uploader :image, ImageUploader
    
    METHOD_NAMES = %w( 完全無肥料／農薬不使用栽培 農薬不使用／無化学肥料栽培＜動物性堆肥不使用＞)
    
    
    UNIT_NAMES = %w(g kg ml l)
    
    PROCESSED_GOODS = %w(麺類・パスタ 調味料 パン・ジャム シリアル 乾物・粉類 缶詰・瓶詰 梅干し・漬物 卵 )
    
    def ensure_not_referenced_by_any_line_item
        if line_items.empty?
            return true
            else
            errors.add(:base, '品目が存在します')
            return false
        end
    end
    
    def self.decrease_stock(pg)
    pg.stock -= 1
    pg.save
end

def self.increase_stock(pg)
pg.stock += 1
pg.save
end

def self.increse_all(pgs)
pgs do |product|
    pg.stock +=1
    pg.save
end
end





end
