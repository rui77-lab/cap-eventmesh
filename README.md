## Next Steps

- To test locally
    - Open a new terminal and run `cds watch`
    - To debug
        - Ctrl + Shift + D (or just simply use the debug tab on Visual Studio)
        - RUN AND DEBUG - Use the `Debug APP` configuration
    - The service is protected - Receiving an event will pass through the authentication mechanism since the EventMesh instance has grant authorities to this xsuaa instance (Configured under xs-security.json)
    - To test the function that is provided by `myService.cds` you can use one of the following options
        - Comment/remove the `@(requires: 'authenticated-user')`
        - Configure an approuter or generate a bearer token with the service credentials and call the function with Bearer Auth
        - Configure mock authentication to allow basic authentication
    - The environment variables with the service description must be available locally - either through `default-env.json` or `.cdsrc-private.json` with binding
- To test in the cloud
    - Deploy the app by running the following commands
        - `mbt build` - if done through BAS, this plugin is already installed, else, run `npm i -g mbt`
        - `cf deploy mta_archives/<generated_mta>` - if done through BAS, this plugin is already installed, else it needs to be installed

- Trigger an event through Event Mesh's UI

## Learn More
Learn more at https://cap.cloud.sap/docs/get-started/.
