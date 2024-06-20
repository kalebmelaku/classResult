import React, { children, createContext, useEffect, useState } from "react";

export const userInfo = createContext();

const UserProvider = ({ children }) => {
	const [user, setUser] = useState([]);

	const setUserInfo = (result) => {
		setUser(result);
		localStorage.setItem("user", JSON.stringify(result[0]));
	};

	return (
		<userInfo.Provider value={{ setUser, user, setUserInfo }}>
			{children}
		</userInfo.Provider>
	);
};

export default UserProvider;
