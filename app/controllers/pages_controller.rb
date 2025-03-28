class PagesController < ApplicationController
  def home 
    render({ template: "pages/home" })
  end

 def square_results
   @the_num = params.fetch("user_number").to_f
   @the_result = @the_num ** 2

  render ({ template: "results/square_results" })
 end

 def root_calc
  render ({ template: "pages/root_calc" })
 end

 def root_results
  @the_num = params.fetch("user_number").to_f
  @the_result = Math.sqrt(@the_num).to_f

  render ({ template: "results/root_results"})
 end

 def payemnt_calc
  render ({ template: "pages/payment_calc" })
 end

 def payment_results
  @num_apr = params.fetch("user_apr").to_f
  @num_years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pv").to_f

  @monthly_rate = (@num_apr / 100) / 12

  @num_months = @num_years * 12

  if @monthly_rate > 0
    @numerator = @monthly_rate * @principal
    @denominator = 1 - (1 + @monthly_rate) ** -@num_months
    @the_result = @numerator / @denominator
  else
    @the_result = @principal / @num_months
  end

  @num_apr = @num_apr.to_fs(:percentage, precision: 4)
  @principal = @principal.to_fs(:currency)
  @the_result = @the_result.to_fs(:currency)

  render ({ template: "results/payment_results"})
 end

 def random_calc
  render ({ template: "pages/random_calc" })
 end

 def random_results
  @min_num = params.fetch("user_min").to_f
  @max_num = params.fetch("user_max").to_f
  @rand_num = rand(@min_num..@max_num)
  
  render ({ template: "results/random_results" })
 end

end
