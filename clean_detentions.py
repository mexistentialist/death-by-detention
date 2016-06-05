import csv
import sys

outcsv_file = csv.writer(open(sys.argv[2], 'w'))

def clean(f):
	return f.strip().replace('  ', '')

with open(sys.argv[1], 'r') as f:
    csvfile = csv.reader(f)

    for row in csvfile:
    	row = map(clean, row)
    	name,address,city,county,state,type_detailed,population_count,facility_operator,facility_owner, per_diem_rate_detailed,last_inspection_standard,last_inspection_rating_final = row
    	name, address, city, county = name.title(), address.title(), city.title(), county.title()

    	outcsv_file.writerow((
			name,
			address,
			city,
			county,
			state,
			type_detailed,
			population_count,
			facility_operator,
			facility_owner,
			per_diem_rate_detailed,
			last_inspection_standard,
			last_inspection_rating_final
		))

