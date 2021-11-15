import { Route, Routes } from "react-router-dom";
import "./App.css";
import CityParkingsPage from "./pages/cityparkings/CityParkingsPage";
import LandingPage from "./pages/landing/LandingPage";

export default function App() {
    return (
        <Routes>
            <Route path="/" element={<LandingPage />} />
            <Route path="cityparkings/*" element={<CityParkingsPage />} />
        </Routes>
    );
}
