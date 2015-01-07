class SpellingPrefix < ActiveRecord::Base
  unloadable

  validates_presence_of :yomi, message:"「よみ（ひらがな）」は必須項目です。"
  validates_presence_of :spell_ok, message:"「OK表記」は必須項目です。"
  validates_length_of :spell_ok, :maximum => 255
  validates_length_of :spell_ng, :maximum => 255
  validates_length_of :example, :maximum => 255
  validates_length_of :exception, :maximum => 255
end
