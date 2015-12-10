class TwoColumnWidget < Widget
  attribute :column_1, :widgetlist
  attribute :column_2, :widgetlist
  attribute :column_1_width, :enum, values: (1..12).to_a.map {|e| e.to_s}, default: '6'

  def column_2_width
    12 - self.column_1_width.to_i
  end

end
