Operator.create(
	operator_type: "GOV",
	name: "Super Operator",
	networth: 1000000
)


DetentionCenter.create!(
	name: "Eloy Detention",
	address_1: "222 W Merchandise Mart Plaza",
	address_2: "",
	city: "Chicago",
	state: "IL",
	zip: "60654",
	county: "Cook",
	operator_id: 1,
	avg_lngth_stay: 400,
	per_diem: 472.38,
	det_standard: "Regular",
	type_contract: "A huge one"
) 

Death.create!(
	first_name: "Bob",
	last_name: "Hoskins",
	cause: "Heart Failure",
	age: 54,
	# date: 2001-02-03,
	lawsuit: "Pending",
	detention_center_id: 1,
	country_of_origin: "Ecuador"
)
