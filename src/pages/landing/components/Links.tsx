import AppleIcon from "@mui/icons-material/Apple";
import GitHubIcon from "@mui/icons-material/GitHub";
import LinkedInIcon from "@mui/icons-material/LinkedIn";
import TwitterIcon from "@mui/icons-material/Twitter";
import { Fab, Stack } from "@mui/material";

export default function Links() {
  return (
    <Stack direction="row" spacing={3} sx={{ mt: 3 }}>
      <Fab
        color="primary"
        aria-label="github"
        href="https://github.com/jterral"
        target="_blank"
      >
        <GitHubIcon />
      </Fab>

      <Fab
        color="primary"
        aria-label="apple"
        href="https://www.linkedin.com/in/jonathan-trl"
        target="_blank"
      >
        <LinkedInIcon />
      </Fab>

      <Fab
        color="primary"
        aria-label="twitter"
        href="https://twitter.com/Jonathan_Trl"
        target="_blank"
      >
        <TwitterIcon />
      </Fab>

      <Fab
        color="primary"
        aria-label="apple"
        href="https://apps.apple.com/in/developer/jonathan-terral/id1491355711"
        target="_blank"
      >
        <AppleIcon />
      </Fab>
    </Stack>
  );
}
