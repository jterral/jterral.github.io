import { Container, Link, Typography } from "@mui/material";
import grey from "@mui/material/colors/grey";
import React from "react";

export default function Copyright() {
    return (
        <Container
            component="div"
            maxWidth="xl"
            sx={{
                position: "fixed",
                minWidth: "100%",
                color: grey[400],
                bottom: 0,
                left: 0,
                right: 0,
            }}
        >
            <Typography variant="body2" align="center" gutterBottom>
                {"Copyright © "}
                <Link color="inherit" href="https://jterral.github.io/">
                    jootl
                </Link>{" "}
                {new Date().getFullYear()}.
            </Typography>
        </Container>
    );
}
