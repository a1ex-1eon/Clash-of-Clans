var inbox = document.getElementById("inbox");
var outbox = document.getElementById("outbox");

switch(window.location.search) {

    case "?do=pm":
	inbox.className += " tab-active";
	break;
	case "?do=pm&folder=inbox":
	inbox.className += " tab-active";
	break;
	case "?do=pm&folder=outbox":
	outbox.className += " tab-active";
	break;
	default:
	inbox.className += " tab-active";
	break;
}