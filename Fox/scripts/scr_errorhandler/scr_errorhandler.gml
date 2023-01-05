exception_unhandled_handler(function(exception) {
	show_debug_message("bruh the game crashed bruhh l: " + exception.longMessage);
	show_message("The Fox Game has crashed lmao\n" + exception.message);
});