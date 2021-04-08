class Product
  attr_accessor :handle, :title, :body, :vendor, :type, :tags, :published, :option1_name, :option1_value, :option2_name, :option2_value, :option3_name, :option3_value, :variant_sku, :variant_grams, :variant_inventory_tracker, :variant_inventory_policy, :variant_inventory_quantity, :variant_fullfilment_service, :variant_price, :variant_compare_at_price, :variant_requires_shipping, :variant_taxable, :variant_barcode, :image_src, :image_alt_text, :gift_card, :google_shopping_mpn, :google_shopping_age_group, :google_shopping_gender, :google_shopping_google_product_category, :seo_title, :seo_description, :google_shopping_adwords_grouping, :google_shopping_adwords_labels, :google_shopping_condition, :google_shopping_custom_product, :google_shopping_custom_label_0, :google_shopping_custom_label_1, :google_shopping_custom_label_2, :google_shopping_custom_label_3, :google_shopping_custom_label_4, :variant_image, :variant_weight_unit

  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
    @keys = [:handle, :title, :body, :vendor, :type, :tags, :published, :option1_name, :option1_value, :option2_name, :option2_value, :option3_name, :option3_value, :variant_sku, :variant_grams, :variant_inventory_tracker, :variant_inventory_policy, :variant_inventory_quantity, :variant_fullfilment_service, :variant_price, :variant_compare_at_price, :variant_requires_shipping, :variant_taxable, :variant_barcode, :image_src, :image_alt_text, :gift_card, :google_shopping_mpn, :google_shopping_age_group, :google_shopping_gender, :google_shopping_google_product_category, :seo_title, :seo_description, :google_shopping_adwords_grouping, :google_shopping_adwords_labels, :google_shopping_condition, :google_shopping_custom_product, :google_shopping_custom_label_0, :google_shopping_custom_label_1, :google_shopping_custom_label_2, :google_shopping_custom_label_3, :google_shopping_custom_label_4, :variant_image, :variant_weight_unit]

    populate_values @keys
  end

  def populate_values keys
    keys.each do |k|
      if !self.send("#{k}")    
        instance_variable_set("@#{k}", self.send("gen_#{k}")) 
      end
    end
  end

  def gen_handle
    @title = Faker::Commerce.product_name
    return @title.downcase.gsub!(' ', '-')
  end
  def gen_title
    return @title
  end
  def gen_body
    return Faker::Lorem.paragraph(sentence_count: 1)
  end
  def gen_vendor
    return Faker::Company.name
  end
  def gen_type
    return Faker::Commerce.department(max: 1, fixed_amount: true)
  end
  def gen_tags
    return Faker::Lorem.words.join(",")
  end
  def gen_published
    return 'TRUE'
  end
  def gen_option1_name
    return 'Title'
  end
  def gen_option1_value
    return 'Extra Small'
  end
  def gen_option2_name
    return ''
  end
  def gen_option2_value
    return ''
  end
  def gen_option3_name
    return ''
  end
  def gen_option3_value
    return ''
  end
  def gen_variant_sku
    return ''
  end
  def gen_variant_grams
    return Faker::Number.between(from: 20, to: 1000)
  end
  def gen_variant_inventory_tracker
    return ''
  end
  def gen_variant_inventory_quantity
    return Faker::Number.number(digits: 1)
  end
  def gen_variant_inventory_policy
    return 'deny'
  end
  def gen_variant_fullfilment_service
    return 'manual'
  end
  def gen_variant_price
    return Faker::Commerce.price
  end
  def gen_variant_compare_at_price
    return ''
  end
  def gen_variant_requires_shipping
    return 'TRUE'
  end
  def gen_variant_taxable
    return 'TRUE'
  end
  def gen_variant_barcode
    return ''
  end
  def gen_image_src
    return Faker::Avatar.image
  end
  def gen_image_alt_text
    return Faker::Lorem.sentence
  end
  def gen_gift_card
    return 'FALSE'
  end
  def gen_google_shopping_mpn
    return Faker::Company.ein
  end
  def gen_google_shopping_age_group
    return ['Adult', 'Child', 'Baby'].sample
  end
  def gen_google_shopping_gender
    return ['Unisex', 'Men', 'Women'].sample
  end
  def gen_google_shopping_google_product_category
    return Faker::Commerce.department
  end
  def gen_seo_title
    return Faker::Lorem.sentence
  end
  def gen_seo_description
    return Faker::Lorem.sentence
  end
  def gen_google_shopping_adwords_grouping
    return @type
  end
  def gen_google_shopping_adwords_labels
    return Faker::Lorem.sentence(word_count: 3, supplemental: true)
  end
  def gen_google_shopping_condition
    return ['new', 'used'].sample
  end
  def gen_google_shopping_custom_product
    return 'FALSE'
  end
  def gen_google_shopping_custom_label_0
    return ''
  end
  def gen_google_shopping_custom_label_1
    return ''
  end
  def gen_google_shopping_custom_label_2
    return ''
  end
  def gen_google_shopping_custom_label_3
    return ''
  end
  def gen_google_shopping_custom_label_4
    return ''
  end
  def gen_variant_image
    return ''
  end
  def gen_variant_weight_unit
    return ''
  end

  def simple_product_attributes size
    child = SimpleProduct.new(static_attributes(size), self)
    child.attributes
  end

  def attributes
    @keys.map{|ivar| instance_variable_get "@#{ivar}"}
  end

  def headers
    @keys.map{|header| header.to_s.gsub('@', '').gsub('_', ' ').capitalize }
  end

  def static_attributes size
    {
      :handle => @handle,
      :option1_name => @option1_name,
      :option1_value => size
    }
  end

end
