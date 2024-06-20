import React from "react";
import useWindowSize from "react-use/lib/useWindowSize";
import Confetti from "react-confetti";

function HomePage() {
	const { width, height } = useWindowSize();
	return (
		<div className="min-h-screen flex flex-col items-center justify-center bg-gray-100 px-4">
			<Confetti width={width} height={height} recycle={false} />
			<div className="flex flex-col bg-white shadow-md px-4 sm:px-6 py-8 rounded-md w-full mx-4 max-w-md">
				<div className="font-medium self-center text-xl sm:text-2xl uppercase text-gray-800 py-3">
					Student Name
				</div>
				<ul>
					<li className="flex items-center justify-between ">
						<p className="text-xl font-semibold">Course</p>
						<p className="text-xl font-semibold">Advanced Programming</p>
					</li>
					<li className="flex items-center justify-between mt-4">
						<p className="text-xl font-semibold">Grade</p>
						<p className="text-3xl font-bold">
							A
						</p>
					</li>
				</ul>
			</div>
		</div>
	);
}

export default HomePage;
