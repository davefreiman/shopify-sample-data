shopify-sample-data
===================

A Faker-inspired generator for shopify sample data

## Installation

Clone the repo:

    git clone https://github.com/dfry22/shopify-sample-data.git

Make sure you have the Faker gem installed:

    gem install faker

Run the script with an argument specifying how many products you want:

    ruby faker_script.rb 15

The `shopify_data.csv` file will be generated in the project root directory. All you have to do is navigate to https://[shopifyhost.com]/admin/products and find the import button. Then select the generated file and boom - Your store now has dummy data.