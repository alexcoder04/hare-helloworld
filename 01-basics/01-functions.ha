// these are the libraries we need
use bufio;
use fmt;
use os;
use strings;

// main function
export fn main() void = {
	// create a constant containing the user name
	const user = read_user_name();
	// greet the user calling the greet function and passing the user name
	greet(user);
};

// this is how to declare a function
// we use snake-case function names
// the return value types are named after the (), similar to Go
fn read_user_name() str = {
	fmt::println("Please enter your name:")!;
	// we read a line from the console
	const name = bufio::scanline(os::stdin)! as []u8;
	return strings::fromutf8(name);
};

// this is how parameters can be passed to a function
fn greet(user: str) void = {
	fmt::printfln("Hello, {}!", user)!;
};

