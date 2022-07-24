import { render, screen } from "@testing-library/react";
import { MemoryRouter } from "react-router-dom";
import App from "./App";

describe("<App />", () => {
  test("should display LandingPage for default route", () => {
    // Arrange
    const app = (
      <MemoryRouter>
        <App />
      </MemoryRouter>
    );

    // Act
    render(app);

    // Assert
    expect(screen.getByTestId("landing")).toBeInTheDocument();
  });

  test("should render CityParkingsPage for cityparkings routes", () => {
    // Arrange
    const app = (
      <MemoryRouter
        initialEntries={["/cityparkings", "/cityparkings/privacy-policy"]}
      >
        <App />
      </MemoryRouter>
    );

    // Act
    render(app);

    // Assert
    expect(screen.getByTestId("cityparkings-appbar")).toBeInTheDocument();
    expect(screen.getByTestId("cityparkings-body")).toBeInTheDocument();
  });
});
