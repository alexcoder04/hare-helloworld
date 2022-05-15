use fmt;

export fn main() void = {
	// 1: const
	const greeting = "Hello";
	fmt::println(greeting)!;
	// you cannot modify constants
	// greeting = "good morning"; // doesn't work
	// however, you can re-assign them
	const greeting = "How you doing?";
	fmt::println(greeting)!;

	// 2: let
	let num1: int = 42, num2: int = 1337;
	fmt::printfln("{} + {} = {}", num1, num2, num1 + num2)!;
	// leet variables can be modified
	num2 = num1;
	fmt::printfln("{} + {} = {}", num1, num2, num1 + num2)!;
};

