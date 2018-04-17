#   Here are the Australian 2017–18 tax rates.
#
#   INCOME              TAX ON INCOME
#   0 – $18,200         Nil
#   $18,201 – $37,000   19c for each $1 over $18,200
#   $37,001 – $87,000   $3,572 plus 32.5c for each $1 over $37,000
#   $87,001 – $180,000  $19,822 plus 37c for each $1 over $87,000
#   $180,001 and over   $54,232 plus 45c for each $1 over $180,000
#
#   Complete the calculate_tax method, it should return a
#   hash containing: income, tax, income_after_tax
#
#   Test your code:
#   ruby tests/18_income_tax_test.rb
#

def calculate_income_tax (income)
  tax_return = {}
  tax_return[:income] = income

  if income >= 180001
    tax_deductable = income - 180000
    tax_over = tax_deductable * 0.45
    tax = tax_over + 54232
    tax_return[:tax] = tax
    income_after_tax = income - tax
    tax_return[:income_after_tax] = income_after_tax

  elsif income <= 180000 && income >= 87001
    tax_deductable = income - 87000
    tax_over = tax_deductable * 0.37
    tax = tax_over + 19822
    tax_return[:tax] = tax
    income_after_tax = income - tax
    tax_return[:income_after_tax] = income_after_tax

  elsif income <= 87000 && income >= 37001
    tax_deductable = income - 37000
    tax_over = tax_deductable * 0.325
    tax = tax_over + 3572
    tax_return[:tax] = tax
    income_after_tax = income - tax
    tax_return[:income_after_tax] = income_after_tax

  elsif income <= 37000 && income >= 18201
    tax_deductable = income - 18200
    tax_over = tax_deductable * 0.19
    tax = tax_over
    tax_return[:tax] = tax
    income_after_tax = income - tax
    tax_return[:income_after_tax] = income_after_tax
    
  elsif income <= 18200
    tax_return[:tax] = 0
    tax_return[:income_after_tax] = income
  end
  return tax_return

  # Your code here!
end

calculate_income_tax (17000)
