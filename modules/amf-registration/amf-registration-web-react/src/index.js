import React from "react";
import ReactDOM from "react-dom";

import { ClayIconSpriteContext } from "@clayui/icon";

import AppComponent from "./AppComponent";

const spritemap = themeDisplay.getPathThemeImages() + "/clay/icons.svg";

/**
 * This is the main entry point of the portlet.
 *
 * See https://tinyurl.com/js-ext-portlet-entry-point for the most recent
 * information on the signature of this function.
 *
 * @param  {Object} params a hash with values of interest to the portlet
 * @return {void}
 */
export default function main({ portletElementId }) {
  const container = document.getElementById(portletElementId);

  ReactDOM.render(
    <ClayIconSpriteContext.Provider value={spritemap}>
      <AppComponent />
    </ClayIconSpriteContext.Provider>,
    container
  );

  Liferay.once("destroyPortlet", () => {
    ReactDOM.unmountComponentAtNode(container);
  });
}