import { render, screen } from "@testing-library/react";
import React from "react";
import App from "./App";

describe("<App />", () => {
    test("should display Landing", () => {
        // Arrange
        const app = <App />;

        // Act
        render(app);

        // Assert
        const ladingElt = screen.getByTestId("landing");
        expect(ladingElt).toBeInTheDocument();
    });
});
