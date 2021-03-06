module ErbStringNonTextContent
  include NonTextNode

  def extract_text( text_extractor, node_tree )
    text_extractor.add_variable( generate_i18n_key( text_extractor, node_tree ).to_s, self.text_value.strip ) unless self.contains_only_whitespace?
  end
  
end
