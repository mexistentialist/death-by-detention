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
	out_filepath = sys.argv[3]

	deaths_csv = csv.reader(open(inmate_deaths_filepath, 'r'))
	centers_csv = csv.reader(open(detention_centers_filepath, 'r'))
	output_csv = csv.writer(open(out_filepath, 'w'))
	missing_csv = csv.writer(open('missing.csv', 'w'))

	output_csv.writerow((
		'NAME', 'SEX',
		'AGE', 'COUNTRY OF BIRTH', 'DATE OF DEATH', 'DETENTION CENTER',
		'CAUSE OF DEATH', 'Facility', 'Address', 'City', 'County', 'State',
		'Type Detailed', 'Population Count', 'Facility Operator', 'Facility Owner',
		'Per Diem Rate Detailed', 'Last Inspection Standard', 'Last Inspection Rating - Final'
	))
	detention_centers = {}

	for row in centers_csv:
		name,address,city,county,state,type_detailed,population_count,facility_operator,facility_owner, \
			per_diem_rate_detailed,last_inspection_standard,last_inspection_rating_final = row
		detention_centers[clean_center(name)] = row

	for row in deaths_csv:
		person_name, gender, dob, country, death_date, detention_center, cause, _ = row

		if is_bop(detention_center):
			continue

		detention_center = clean_center(detention_center)

		if detention_center not in detention_centers:
			missing_csv.writerow((person_name, detention_center))

		else:
			output_csv.writerow([
				person_name,
				gender,
				dob,
				country,
				death_date,
				detention_center.title(),
				cause,
			] + detention_centers[detention_center])

	missing_csv.writerow(('', ))

	for l in detention_centers.keys():
		missing_csv.writerow((l, ))


if __name__ == '__main__':
	main()
