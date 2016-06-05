import csv
import sys

outcsv_file = csv.writer(open(sys.argv[2], 'w'))

def clean(f):
	return f.strip().replace('  ', '')

with open(sys.argv[1], 'r') as f:
    csvfile = csv.reader(f)

    for row in csvfile:
        row = map(clean, row)
        person_name, gender, dob, country, death_date, detention_center, cause, _ = row
        person_name, country, detention_center, = person_name.title(), country.title(), detention_center.title()
        outcsv_file.writerow((
            person_name, gender, dob, country, death_date,
            detention_center, cause
        ))
