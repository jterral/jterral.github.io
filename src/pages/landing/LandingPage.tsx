import { Avatar, Box, Container, Grid, Link, Typography } from "@mui/material";
import React from "react";
import background from "./assets/bg-light.jpg";
import logo from "./assets/me.jpg";
import Copyright from "./components/Copyright";
import Links from "./components/Links";

export default function LandingPage() {
    return (
        <Container
            data-testid="landing"
            maxWidth="xl"
            sx={{
                minHeight: "100vh",
                minWidth: "100%",
                color: "white",
                backgroundImage: `url(${background})`,
                backgroundSize: "cover",
                boxShadow: "inset 0 0 0 5000px rgba(0, 0, 0, 0.6)",
            }}
        >
            <Grid
                container
                spacing={0}
                direction="column"
                alignItems="center"
                justifyContent="center"
                style={{ minHeight: "100vh" }}
            >
                <Grid item>
                    <Avatar
                        alt="me"
                        sx={{ width: 120, height: 120, mb: 3 }}
                        src={logo}
                        className="App-logo"
                    />
                </Grid>
                <Grid item>
                    <Typography
                        variant="h3"
                        component="h1"
                        fontFamily="Roboto Mono"
                        align="center"
                        gutterBottom
                    >
                        Hello, World!
                    </Typography>
                </Grid>
                <Grid item>
                    <Typography
                        variant="h5"
                        component="h2"
                        fontFamily="Roboto Mono"
                        align="center"
                    >
                        I'm Jonathan,{" "}
                        <Box
                            sx={{ color: "primary.main" }}
                            fontStyle="italic"
                            display="inline"
                        >
                            software engineer
                        </Box>
                    </Typography>
                </Grid>
                <Grid item>
                    <Typography
                        variant="subtitle1"
                        component="h3"
                        fontFamily="Roboto Mono"
                        align="center"
                        gutterBottom
                    >
                        Currently working as .NET Core backend developer{" "}
                        <Link
                            href="https://www.welcometothejungle.com/companies/betclic"
                            underline="hover"
                            color="inherit"
                        >
                            @Betclicgroup
                        </Link>
                    </Typography>
                </Grid>
                <Grid item>
                    <Links />
                </Grid>
            </Grid>
            <Copyright />
        </Container>
    );
}
