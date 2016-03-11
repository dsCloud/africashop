# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
Paperclip::Attachment.default_options[:url] = ':https://dsafricashop.s3.amazonaws.com/'
Paperclip::Attachment.default_options[:path] = '/:product/:attachment/:id_partition/:style/:filename'
