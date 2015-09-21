jQuery ->
	patient_lga_id = $('#patient_lga_id').html()
	$('#patient_state_id').change ->
		patient_state_id = $('#patient_state_id :selected').text()
		options = $(patient_lga_id).filter("optgroup[label='#{patient_state_id}']").html()
		if options
			$('#patient_lga_id').html(options)
		else
			$('#patient_lga_id').empty()