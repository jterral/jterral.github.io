import { AppBar, createTheme, Link, Toolbar, Typography } from "@mui/material";
import grey from "@mui/material/colors/grey";
import { makeStyles } from "@mui/styles";
import React from "react";

const theme = createTheme();
const useStyles = makeStyles((themea) => ({
    root: {
        paddingLeft: theme.spacing(5),
        paddingRight: theme.spacing(5),
        color: grey[800],
    },
    personnaldata: {
        paddingLeft: theme.spacing(2),
    },
}));

export default function CityParkingsPage() {
    const classes = useStyles();
    return (
        <React.Fragment>
            <AppBar>
                <Toolbar variant="dense">
                    <Typography variant="h6" color="inherit" component="div">
                        City Parkings
                    </Typography>
                </Toolbar>
            </AppBar>
            <Toolbar />

            <div className={classes.root}>
                <Typography
                    variant="h1"
                    align="center"
                    fontFamily="Impact"
                    gutterBottom
                >
                    Privacy Policy
                </Typography>

                <Typography variant="subtitle1" component="p" gutterBottom>
                    Last update: April 15, 2020
                </Typography>
                <br />

                <Typography variant="h3" component="h2" fontFamily="Impact">
                    Who we are
                </Typography>
                <Typography variant="body1" component="p" gutterBottom>
                    Our website address is:&nbsp;
                    <Link
                        href="https://jterral.github.io"
                        underline="hover"
                        color="inherit"
                    >
                        https://jterral.github.io
                    </Link>
                </Typography>
                <br />

                <Typography variant="h3" component="h2" fontFamily="Impact">
                    General information
                </Typography>
                <Typography variant="body1" component="p">
                    This Privacy Policy describes how your personal information
                    is collected, used, and shared when you use City Parkings
                    (the mobile application).
                </Typography>
                <Typography variant="body1" component="p">
                    If you choose to use the application, then you agree to the
                    collection and use of information in relation to this
                    policy.
                </Typography>
                <Typography variant="body1" component="p">
                    The Personal Information that we collect is used for
                    providing and improving the Service.
                </Typography>
                <Typography variant="body1" component="p" gutterBottom>
                    We will not use or share your information with anyone except
                    as described in this Privacy Policy
                </Typography>
                <br />

                <Typography variant="h3" component="h2" fontFamily="Impact">
                    Personal data
                </Typography>
                <Typography variant="body1" component="p" gutterBottom>
                    For a better experience, while using our application, we may
                    require you to provide us with certain personally
                    identifiable information. The information that we request
                    will be retained on your device and is not collected by our
                    in any way.
                </Typography>

                <div className={classes.personnaldata}>
                    <Typography variant="h4" component="h3" fontFamily="Impact">
                        Cookies
                    </Typography>
                    <Typography variant="body1" component="p" gutterBottom>
                        Cookies are data files that are placed on your device
                        often include an anonymous unique identifier.
                    </Typography>

                    <Typography variant="h4" component="h3" fontFamily="Impact">
                        Logs
                    </Typography>
                    <Typography variant="body1" component="p" gutterBottom>
                        Log files track actions occurring on the application,
                        and collect data including your IP address, device type,
                        operating system version, date/time stamps and other
                        statistics.
                    </Typography>
                </div>
                <br />

                <Typography variant="h3" component="h2" fontFamily="Impact">
                    Changes
                </Typography>
                <Typography variant="body1" component="p" gutterBottom>
                    We may update this Privacy Policy from time to time in order
                    to reflect, for example, changes to our practices or for
                    other operational, legal or regulatory reasons. Thus, you
                    are advised to review this page periodically for any
                    changes. These changes are effective immediately after they
                    are posted on this page.
                </Typography>
                <br />

                <Typography variant="h3" component="h2" fontFamily="Impact">
                    Contact us
                </Typography>
                <Typography variant="body1" component="p" gutterBottom>
                    For more information about our privacy practices, if you
                    have questions, or if you would like to make a complaint,
                    please contact us by e-mail support@jootl.io.
                </Typography>
            </div>
        </React.Fragment>
    );
}
