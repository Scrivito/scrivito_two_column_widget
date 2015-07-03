class TwoColumnWidget < Widget
  attribute :column_1, :widgetlist
  attribute :column_2, :widgetlist
  attribute :column_1_width, :string, default: '6'

  def column_2_width
    12 - self.column_1_width.to_i
  end

end
