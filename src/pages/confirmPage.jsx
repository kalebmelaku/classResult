import React, { useContext, useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { userInfo } from "../context/userInfo";
import axios from "axios";
import { Url } from "../includes/url";

function ConfirmPage() {
	const navigate = useNavigate();
	const [studentId, setStudentId] = useState("");
	const [studentEmail, setStudentEmail] = useState("");
	const [studentPhone, setStudentPhone] = useState("");
	const [studentCommType, setStudentCommType] = useState("");

	const [num1, setNum1] = useState("");
	const [num2, setNum2] = useState("");
	const [num3, setNum3] = useState("");
	const [num4, setNum4] = useState("");
	const [num5, setNum5] = useState("");

	const [text, setText] = useState("");
	const [status, setStatus] = useState(false);
	const { user, setUser, setUserInfo } = useContext(userInfo);

	useEffect(() => {
		const storedUserInfo = JSON.parse(localStorage.getItem("user"));
		setStudentId(storedUserInfo.idNumber);
		setStudentEmail(storedUserInfo.email);
		setStudentPhone(storedUserInfo.phone);
		setStudentCommType(storedUserInfo.commType);
	});

	const handleSubmit = async (e) => {
		e.preventDefault();
		try {
			const response = await axios.post(`${Url}/otpVerify`, {
				stdId: studentId,
				num1,
				num2,
				num3,
				num4,
				num5,
			});
			if (response.status === 200) {
				setStatus(false);
				navigate("/homePage");
			} else {
				setText("Incorrect OTP");
				setStatus(true);
			}
		} catch (err) {
			setText("Incorrect OTP");
			setStatus(true);
		}
	};
	return (
		<div className="min-h-screen flex flex-col items-center justify-center bg-gray-100 px-4">
			<div className="flex flex-col bg-white shadow-md px-4 sm:px-6 py-8 rounded-md w-full mx-4 max-w-md">
				<div className="py-4">
					<h1 className="text-xl font-semibold text-center mb-4">Enter OTP</h1>
					<p className="text-gray-600 text-center mb-4">
						<span className="whitespace-nowrap">
							Code sent to {studentCommType}
						</span>
						<br />
						<span className="whitespace-nowrap">
							{studentCommType == "WhatsApp" ? studentPhone : studentEmail}
						</span>
					</p>
					{status ? <p className="text-center text-red-500">{text}</p> : null}
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
							value={num1}
							onChange={(e) => setNum1(e.target.value)}
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
							value={num2}
							onChange={(e) => setNum2(e.target.value)}
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
							value={num3}
							onChange={(e) => setNum3(e.target.value)}
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
							value={num4}
							onChange={(e) => setNum4(e.target.value)}
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
							value={num5}
							onChange={(e) => setNum5(e.target.value)}
						/>
					</div>
				</div>
				<div className="flex items-center flex-col justify-between mt-6">
					<button
						className="w-full px-4 py-2 text-lg font-medium text-white bg-blue-600 rounded-md hover:bg-blue-700"
						onClick={handleSubmit}
					>
						Verify
					</button>
				</div>
			</div>
		</div>
	);
}

export default ConfirmPage;
