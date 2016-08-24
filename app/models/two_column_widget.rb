class TwoColumnWidget < Widget
  attribute :column_1, :widgetlist
  attribute :column_2, :widgetlist
  attribute :column_1_width, :enum, values: (1..12).to_a.map {|e| e.to_s}, default: '6'
  attribute :grid_size, :enum, values: ['small','default','large'], default: 'default'
  attribute :keep_columns, :enum, values: ['Yes','No'], default: 'No'

  def column_2_width
    val = column_2_width_value
    val < 1 ? 1 : val
  end

  def column_2_width_value
    12 - self.column_1_width.to_i
  end

  def grid_size_class
    "#{grid_size || 'default'}-grid"
  end

  def device_class
    keep_columns == 'Yes' ? 'xs' : 'md'
  end
end
