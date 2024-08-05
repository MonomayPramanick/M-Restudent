package com.monomay;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

public class Main {
    public static void main(String[] args) throws Exception {
        // Create a basic Jetty server object without declaring the port. Since we are configuring
        // Jetty as a standalone application, the port can be specified on the command line.
        Server server = new Server(8081);

        // Set the context path and the location of the web app
        WebAppContext webAppContext = new WebAppContext();
        webAppContext.setContextPath("/");
        webAppContext.setWar("target/M-Restudent-0.0.1-SNAPSHOT.war");

        // Set the context on the server
        server.setHandler(webAppContext);

        // Start the server
        server.start();
        server.join();
    }
}
