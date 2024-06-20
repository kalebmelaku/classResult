import axios from "axios";
import React, { useContext, useState } from "react";
import { Link, Navigate, useNavigate } from "react-router-dom";
import { userInfo } from "../context/userInfo";

function LoginPage() {
	<link
		rel="stylesheet"
		href="https://kit-pro.fontawesome.com/releases/v5.15.1/css/pro.min.css"
	/>;
	const navigate = useNavigate();
	const [studentId, setStudentId] = useState("");
	const [text, setText] = useState("");
	const [status, setStatus] = useState(false);
	const { user, setUser, setUserInfo } = useContext(userInfo);

	const handleSubmit = async (e) => {
		e.preventDefault();
		try {
			const response = await axios.post("http://localhost:5000/login", {
				id: studentId,
			});
			if (response.status === 200) {
				setStatus(false);
				setUserInfo(response.data.result);
				navigate("/confirm");
			} else {
				setText("Check Your Id");
				setStatus(true);
			}
		} catch (err) {
			setText("Check Your Id");
			setStatus(true);
		}
	};
	return (
		<div className="min-h-screen flex flex-col items-center justify-center bg-gray-100 px-4">
			<div className="flex flex-col bg-white shadow-md px-4 sm:px-6 py-8 rounded-md w-full mx-4 max-w-md">
				<div className="font-medium self-center text-xl sm:text-2xl uppercase text-gray-800 py-3">
					Login To Your Account
				</div>
				{status ? <p className="text-center text-red-500">{text}</p> : null}
				<div className="mt-8">
					<form onSubmit={handleSubmit}>
						<div className="flex flex-col mb-6">
							<label
								htmlFor="phone"
								className="mb-1 text-xs sm:text-sm tracking-wide text-gray-600"
							>
								ID Number:
							</label>
							<div className="relative">
								<div className="inline-flex items-center justify-center absolute left-0 top-0 h-full w-10 text-gray-400">
									<svg
										className="h-6 w-6"
										fill="none"
										strokeLinecap="round"
										strokeLinejoin="round"
										strokeWidth="2"
										viewBox="0 0 24 24"
										stroke="currentColor"
									>
										<path d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207" />
									</svg>
								</div>

								<input
									id="id"
									type="text"
									maxLength={9}
									minLength={9}
									name="id"
									className="text-sm sm:text-base placeholder-gray-500 pl-10 pr-4 rounded-lg border border-gray-400 w-full py-2 focus:outline-none focus:border-blue-400"
									placeholder="R/1234/56"
									required
									value={studentId}
									onChange={(e) => setStudentId(e.target.value)}
								/>
							</div>
						</div>

						<div className="flex w-full">
							<button
								type="submit"
								className="flex items-center justify-center focus:outline-none text-white text-sm sm:text-base bg-blue-600 hover:bg-blue-700 rounded py-2 w-full transition duration-150 ease-in"
							>
								<span className="mr-2 uppercase">Login</span>
								<span>
									<svg
										className="h-6 w-6"
										fill="none"
										strokeLinecap="round"
										strokeLinejoin="round"
										strokeWidth="2"
										viewBox="0 0 24 24"
										stroke="currentColor"
									>
										<path d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z" />
									</svg>
								</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	);
}

export default LoginPage;
