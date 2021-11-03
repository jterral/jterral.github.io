import { createTheme, ThemeProvider } from "@mui/material/styles";
import { HashRouter as Router, Route, Switch } from "react-router-dom";
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
        <Router>
            <Switch>
                <ThemeProvider theme={theme}>
                    <Route exact path="/">
                        <LandingPage />
                    </Route>
                    <Route path="/cityparkings">
                        <CityParkingsPage />
                    </Route>
                </ThemeProvider>
            </Switch>
        </Router>
    );
}