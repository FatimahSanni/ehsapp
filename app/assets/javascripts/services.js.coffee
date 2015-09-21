jQuery ->
	amount = $('#amount').html()
	$('#name').change ->
		name = $('#name :selected').text()
		options = $(amount).filter("optgroup[label='#{name}']").html()
		if options
			$('#amount').html(options)
		else
			$('#amount').empty()
	