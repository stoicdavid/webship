class Head < ActiveRecord::Base
  belongs_to :line
  has_one :service
  
  def cadena_head
    [self.plate,self.economic,self.brand,self.color,self.year].join(' ')
  end
  
end
