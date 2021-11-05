import { createTheme, ThemeProvider } from "@mui/material/styles";
import { HashRouter, Route, Routes } from "react-router-dom";
import "./App.css";
import CityParkingsPage from "./pages/cityparkings/CityParkingsPage";
import LandingPage from "./pages/landing/LandingPage";

const theme = createTheme({
    palette: {
        primary: {
            main: "#D11141",
        },
        secondary: {
            main: "#11D1A1",
        },
    },
});

export default function App() {
    return (
        <ThemeProvider theme={theme}>
            <HashRouter>
                <Routes>
                    <Route path="/" element={<LandingPage />} />
                    <Route
                        path="cityparkings/*"
                        element={<CityParkingsPage />}
                    />
                </Routes>
            </HashRouter>
        </ThemeProvider>
    );
}
