# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm.
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?



#   assert_equal(683.28, total_cost(500, 320, 2400, 1200))
#
#
# total_wastage(500, 320, 2400, 1200)

def total_cost(cost_p_sheet, units, diameter, length, width)
  rows = width / diameter
  columns = length / diameter
  units_per_sheet = (rows.to_i * columns.to_i)
  sheets_needed = (units.to_f / units_per_sheet.to_f).ceil
  cost = sheets_needed * cost_p_sheet
  return cost
end

def total_wastage(cost_p_sheet, units, diameter, length, width)
# how many lamp bases per row
  rows = width / diameter
# how many lamp bases per column
  columns = length / diameter
# units per sheet
  units_per_sheet = (rows.to_i * columns.to_i)
# sheets needed (total units - units per sheet)
  sheets_needed = (units.to_f / units_per_sheet.to_f).ceil
# total cost
  cost = sheets_needed * cost_p_sheet

# precise sheets (21 units per sheet)
  precise = sheets_needed - 1
# imprecise (the last sheet that doesnt have as many units)
  imprecise = units - (units_per_sheet * precise)


# circle area
  radius = diameter / 2
  diameter * diameter
  lamp_base_area = (Math::PI * (radius * radius)).ceil
# total circle area (times units per sheet)
  total_lamp_area = units_per_sheet * lamp_base_area
# total wastage area (total sheet are minus total_lamp_area)
  left_over = (length * width) - total_lamp_area
# total wastage area for all sheets (except precise!)
  precise_w = left_over * precise
  imprecise_w = (length * width) - (imprecise * lamp_base_area)
  puts (precise_w + imprecise_w).to_f / 1000000
end
total_wastage(28.47, 500, 320, 2400, 1200)
