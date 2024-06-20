import React from "react";
import { Link } from "react-router-dom";

function ConfirmPage() {
	return (
		<div className="min-h-screen flex flex-col items-center justify-center bg-gray-100 px-4">
			<div className="flex flex-col bg-white shadow-md px-4 sm:px-6 py-8 rounded-md w-full mx-4 max-w-md">
				<div className="py-4">
					<h1 className="text-xl font-semibold text-center mb-4">Enter OTP</h1>
					<p className="text-gray-600 text-center mb-4">
						<span className="whitespace-nowrap">Code sent to WhatsApp number</span>
						<br />
						<span className="whitespace-nowrap">+880-123456789</span>
					</p>
				</div>
				<div className="flex items-center justify-between mt-4 w-full">
					<div className="rounded-lg bg-gray-100 cursor-text w-14 aspect-square flex items-center justify-center mx-2">
						<input
							type="text"
							name=""
							id=""
							className="w-full bg-gray-300 rounded-lg py-3 text-black outline-none focus:outline-none text-center text-xl"
							maxLength={1}
							required
						/>
						{/* <span className="text-gray-700 dark:text-gray-400">1</span> */}
					</div>
					<div className="rounded-lg bg-gray-100 cursor-text w-14 aspect-square flex items-center justify-center mx-2">
						<input
							type="text"
							name=""
							id=""
							className="w-full bg-gray-300 rounded-lg py-3 text-black outline-none focus:outline-none text-center text-xl"
							maxLength={1}
							required
						/>
					</div>
					<div className="rounded-lg bg-gray-100 cursor-text w-14 aspect-square flex items-center justify-center mx-2">
						<input
							type="text"
							name=""
							id=""
							className="w-full bg-gray-300 rounded-lg py-3 text-black outline-none focus:outline-none text-center text-xl"
							maxLength={1}
							required
						/>
					</div>
					<div className="rounded-lg bg-gray-100 cursor-text w-14 aspect-square flex items-center justify-center mx-2">
						<input
							type="text"
							name=""
							id=""
							className="w-full bg-gray-300 rounded-lg py-3 text-black outline-none focus:outline-none text-center text-xl"
							maxLength={1}
							required
						/>
					</div>
					<div className="rounded-lg bg-gray-100 cursor-text w-14 aspect-square flex items-center justify-center mx-2">
						<input
							type="text"
							name=""
							id=""
							className="w-full bg-gray-300 rounded-lg py-3 text-black outline-none focus:outline-none text-center text-xl"
							maxLength={1}
							required
						/>
					</div>
				</div>
				<div className="flex items-center flex-col justify-between mt-6">
					<button className="w-full px-4 py-2 text-lg font-medium text-white bg-blue-600 rounded-md hover:bg-blue-700">
						Verify
					</button>
				</div>
			</div>
		</div>
	);
}

export default ConfirmPage;
