import React, { useEffect, useState } from "react";
import useWindowSize from "react-use/lib/useWindowSize";
import Confetti from "react-confetti";
import ClipLoader from "react-spinners/ClipLoader";
import axios from "axios";
import { Url } from "../includes/url";

function HomePage() {
	const { width, height } = useWindowSize();
	const storedUserInfo = JSON.parse(localStorage.getItem("user"));
	const [result, setResult] = useState([]);
	const [waiting, setWaiting] = useState(false);
	const stdId = storedUserInfo.idNumber;
	const color = "#000000";
	const override = {
		margin: "16px auto",
	};
	useEffect(() => {
		const getResult = async (stdId) => {
			try {
				const response = await axios.post(`${Url}/getResult`, {
					stdId,
				});
				if (response.status === 200) {
					setResult(response.data.result[0]);
					setWaiting(false);
				} else if (response.status === 404) {
					setWaiting(true);
				}
			} catch (err) {
				console.log(err);
			}
		};
		getResult(stdId);
	}, [stdId]);
	return (
		<div className="min-h-screen flex flex-col items-center justify-center bg-gray-100 px-4">
			{result.totalMark >= 80 ? (
				<Confetti width={width} height={height} recycle={false} />
			) : null}
			<div className="flex flex-col bg-white shadow-md px-4 sm:px-6 py-8 rounded-md w-full mx-4 max-w-md">
				<div className="font-medium self-center text-xl sm:text-2xl uppercase text-gray-800 py-3">
					{storedUserInfo.fullName}
				</div>
				{waiting ? (
					<div className="w-full flex flex-col mx-auto">
						<ClipLoader
							color={color}
							loading={true}
							cssOverride={override}
							size={80}
							aria-label="Loading Spinner"
							data-testid="loader"
						/>
						<p className="text-center font-semibold">Result Will be Displayed Soon</p>
					</div>
				) : (
					<ul>
						<li className="flex items-center justify-between ">
							<p className="text-xl font-semibold">Course</p>
							<p className="text-xl font-semibold">Advanced Programming</p>
						</li>
						<li className="flex items-center justify-between mt-4">
							<p className="text-xl font-semibold">Grade</p>
							<p className="text-3xl font-bold">{result.totalMark}</p>
						</li>
					</ul>
				)}
			</div>
		</div>
	);
}

export default HomePage;
