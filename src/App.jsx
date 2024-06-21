import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from "./pages/homePage";
import LoginPage from "./pages/LoginPage";
import ConfirmPage from "./pages/confirmPage";
import Admin from "./pages/admin";
import NotFound from "./pages/404";
function App() {
	return (
		<>
			<Router>
				<Routes>
					<Route path="/" element={<NotFound />} />
					<Route path="/confirm" element={<ConfirmPage />} />
					<Route path="/homePage" element={<HomePage />} />
					<Route path="/admin" element={<Admin />} />
				</Routes>
			</Router>
		</>
	);
}

export default App;
