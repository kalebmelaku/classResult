import axios from "axios";
import React, { useEffect, useState } from "react";
import { Url } from "../includes/url";

function Admin() {
	const [users, setUsers] = useState([]);
	const [stdId, setStdId] = useState("");

	const getResult = async (e) => {
		e.preventDefault();
		try {
			const response = await axios.post(`${Url}/getAllResult`, {
				id: stdId,
			});
			if (response.status === 200) {
				setUsers(response.data.result);
			} else if (response.status === 404) {
			}
		} catch (err) {
			console.log(err);
		}
	};

	return (
		<div className="container mx-auto">
			<form
				action=""
				className="mx-auto w-full md:w-1/2 rounded-lg my-4 py-8 bg-gray-100 flex justify-center"
				onSubmit={getResult}
			>
				<input
					type="text"
					name="id"
					id="id"
					className="rounded-lg mr-4 px-2"
					value={stdId}
					onChange={(e) => setStdId(e.target.value)}
				/>
				<input
					type="submit"
					className="bg-blue-600 text-white px-4 py-2 rounded-lg"
					value="Search"
				/>
			</form>
			<div className="flex flex-col">
				<div className="overflow-x-auto sm:mx-0.5 lg:mx-0.5">
					<div className="py-2 inline-block min-w-full sm:px-6 lg:px-8">
						<div className="overflow-hidden">
							<table className="min-w-full">
								<thead className="bg-white border-b">
									<tr>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											ID
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											NAME
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											MID
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											ATTENDANCE
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											PROJECT
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											FINAL
										</th>
										<th
											scope="col"
											className="text-sm font-medium text-gray-900 px-3 py-4 text-left"
										>
											TOTAL
										</th>
									</tr>
								</thead>
								<tbody>
									{users.map((item) => {
										console.log(item);
										return (
											<tr className="bg-gray-100 border-b">
												<td className="px-3 py-4 whitespace-nowrap font-bold ">
													{item.idNumber}
												</td>
												<td className=" font-bold px-3 py-4 whitespace-nowrap">
													{item.name}
												</td>
												<td className=" font-bold px-3 py-4 whitespace-nowrap">
													{item.mid}
												</td>
												<td className="font-bold px-3 py-4 whitespace-nowrap">
													{item.attendance}
												</td>
												<td className="text-black font-bold px-3 py-4 whitespace-nowrap">
													{item.project}
												</td>
												<td className=" font-bold px-3 py-4 whitespace-nowrap">
													{item.final}
												</td>
												<td className=" font-bold px-3 py-4 whitespace-nowrap">
													{item.total}
												</td>
											</tr>
										);
									})}
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	);
}

export default Admin;
