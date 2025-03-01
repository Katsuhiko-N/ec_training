class Item < ApplicationRecord
    has_one_attached :image
    
    
    def i_image(width, height)
        unless image.attached?
            # デフォ画像のパス指定
            file_path = Rails.root.join('app/assets/images/no-image.jpg')
            # 画像がない場合、アタッチする記述
            image.attach(io: File.open(file_path), filename: 'defalult-image.jpg', content_type: 'image/jpeg')
        end
        # 画像がアタッチされている時
        image.variant(resize_to_limit: [width, height]).processed
    end
    
end