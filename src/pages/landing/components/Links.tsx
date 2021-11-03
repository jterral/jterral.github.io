import AppleIcon from "@mui/icons-material/Apple";
import GitHubIcon from "@mui/icons-material/GitHub";
import LinkedInIcon from "@mui/icons-material/LinkedIn";
import TwitterIcon from "@mui/icons-material/Twitter";
import { Avatar, IconButton, Stack } from "@mui/material";
import React from "react";

const MyLink = (props: any) => (
    <IconButton
        href={props.href}
        aria-label={props.ariaLabel}
        size="small"
        sx={{
            ":hover .avatar": {
                bgcolor: "secondary.main",
            },
        }}
    >
        <Avatar
            sx={{ height: 50, width: 50, bgcolor: "primary.main" }}
            className={"avatar"}
        >
            {props.children}
        </Avatar>
    </IconButton>
);

export default function Links() {
    return (
        <Stack direction="row" spacing={0.5} sx={{ mt: 3 }}>
            <MyLink ariaLabel="GitHub" href="https://github.com/jterral">
                <GitHubIcon />
            </MyLink>
            <MyLink ariaLabel="Twitter" href="https://twitter.com/Jonathan_Trl">
                <TwitterIcon />
            </MyLink>
            <MyLink
                ariaLabel="LinkedIn"
                href="https://www.linkedin.com/in/jonathan-trl"
            >
                <LinkedInIcon />
            </MyLink>
            <MyLink
                ariaLabel="Apple"
                href="https://apps.apple.com/in/developer/jonathan-terral/id1491355711"
            >
                <AppleIcon />
            </MyLink>
        </Stack>
    );
}
