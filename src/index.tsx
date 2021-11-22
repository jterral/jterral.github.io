import { createTheme, ThemeProvider } from "@mui/material/styles";
import React from "react";
import ReactDOM from "react-dom";
import { HashRouter } from "react-router-dom";
import App from "./App";
import "./index.css";
import reportWebVitals from "./reportWebVitals";
import TagManager from "react-gtm-module";

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

if (process.env.NODE_ENV === "production") {
    const tagManagerArgs = {
        gtmId: "GTM-W7634GQ",
    };

    TagManager.initialize(tagManagerArgs);
}

ReactDOM.render(
    <React.StrictMode>
        <ThemeProvider theme={theme}>
            <HashRouter>
                <App />
            </HashRouter>
        </ThemeProvider>
    </React.StrictMode>,
    document.getElementById("root"),
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
