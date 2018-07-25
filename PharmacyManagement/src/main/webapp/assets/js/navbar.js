//in hear im going to stile the navbar 

$(function() {
	// Solving the active menu problem
	switch (menu) {
	case 'Home':
		$('#home').addClass('active');
		break;
	case 'Inventory Home':
		$('#inventoryhome').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		break;
	}
});