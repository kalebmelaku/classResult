import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from "./pages/homePage";
import LoginPage from "./pages/LoginPage";
import ConfirmPage from "./pages/confirmPage";
function App() {
	return (
		<>
			<Router>
        <Routes>
          <Route path="/" element={<LoginPage/>} />
          <Route path="/confirm" element={<ConfirmPage/>} />
          <Route path="/homePage" element={<HomePage />} />
        </Routes>
			</Router>
		</>
	);
}

export default App;
