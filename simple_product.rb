class SimpleProduct < Product

  attr_accessor :parent_product

  def initialize args, parent_product

    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end

    @parent_product = parent_product

    @keys = [:handle, :title, :body, :vendor, :type, :tags, :published, :option1_name, :option1_value, :option2_name, :option2_value, :option3_name, :option3_value, :variant_sku, :variant_grams, :variant_inventory_tracker, :variant_inventory_policy, :variant_inventory_quantity, :variant_fullfilment_service, :variant_price, :variant_compare_at_price, :variant_requires_shipping, :variant_taxable, :variant_barcode, :image_src, :image_alt_text, :gift_card, :google_shopping_mpn, :google_shopping_age_group, :google_shopping_gender, :google_shopping_google_product_category, :seo_title, :seo_description, :google_shopping_adwords_grouping, :google_shopping_adwords_labels, :google_shopping_condition, :google_shopping_custom_product, :google_shopping_custom_label_0, :google_shopping_custom_label_1, :google_shopping_custom_label_2, :google_shopping_custom_label_3, :google_shopping_custom_label_4, :variant_image, :variant_weight_unit]

    populate_values @keys
  end

  def gen_title
    return ''
  end
  def gen_body
    ''
  end
  def gen_vendor
    ''
  end
  def gen_type
    ''
  end
  def gen_tags
    ''
  end
  def gen_published
    ''
  end
  def gen_option1_value
    return ['Small','Medium','Large'].sample
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
    return "#{@handle}-#{@option1_value.downcase}"
  end
  def gen_variant_grams
    return Faker::Number.between(from: 20, to: 1000)
  end
  def gen_variant_price
    return Faker::Commerce.price
  end
  def gen_variant_compare_at_price
    return @parent_product.variant_price
  end
  def gen_image_src
    ''
  end
  def gen_image_alt_text
    ''
  end
  def gen_gift_card
    ''
  end
  def gen_google_shopping_mpn
    ''
  end
  def gen_google_shopping_age_group
    ''
  end
  def gen_google_shopping_gender
    ''
  end
  def gen_google_shopping_google_product_category
    ''
  end
  def gen_seo_title
    ''
  end
  def gen_seo_description
    ''
  end
  def gen_google_shopping_adwords_grouping
    ''
  end
  def gen_google_shopping_adwords_labels
    ''
  end
  def gen_google_shopping_condition
    ''
  end
  def gen_google_shopping_custom_product
    ''
  end
  def gen_google_shopping_custom_label_0
    ''
  end
  def gen_google_shopping_custom_label_1
    ''
  end
  def gen_google_shopping_custom_label_2
    ''
  end
  def gen_google_shopping_custom_label_3
    ''
  end
  def gen_google_shopping_custom_label_4
    ''
  end
  def gen_variant_image
    ''
  end
  def gen_variant_weight_unit
    ''
  end
end
