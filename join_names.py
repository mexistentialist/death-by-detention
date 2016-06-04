import csv
import sys
import pprint

def clean_center(l):
	return l.strip().lower().replace('(bop) ', '').replace('  ', '').replace('\\n', '')

def is_bop(location):
	return '(BOP) ' in location

def main():
	inmate_deaths_filepath = sys.argv[1]
	detention_centers_filepath = sys.argv[2]
	# out_filepath = sys.argv[3]

	deaths_csv = csv.reader(open(inmate_deaths_filepath, 'r'))
	centers_csv = csv.reader(open(detention_centers_filepath, 'r'))
	records = []
	detention_centers = {}

	for row in centers_csv:
		name,address,city,county,state,type_detailed,population_count,facility_operator,facility_owner, \
			per_diem_rate_detailed,last_inspection_standard,last_inspection_rating_final = row
		detention_centers[clean_center(name)] = row

	for row in deaths_csv:
		person_name, gender, dob, country, death_date, detention_center, cause, other = row 

		if is_bop(detention_center):
			continue

		detention_center = clean_center(detention_center)

		if detention_center not in detention_centers:
			print(person_name, detention_center, detention_center in detention_centers)

	pprint.pprint(detention_centers.keys())

if __name__ == '__main__':
	main()
