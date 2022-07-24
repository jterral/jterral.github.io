import { Navigate, Route, Routes } from "react-router-dom";
import "./App.css";
import CityParkingsPage from "./pages/cityparkings/CityParkingsPage";
import LandingPage from "./pages/landing/LandingPage";

export default function App() {
  return (
    <Routes>
      <Route path="/" element={<LandingPage />} />
      <Route path="/apps/cityparkings" element={<CityParkingsPage />} />
      <Route
        path="cityparkings/*"
        element={<Navigate replace to="/apps/cityparkings" />}
      />
      <Route path="*" element={<Navigate replace to="/" />} />
    </Routes>
  );
}
