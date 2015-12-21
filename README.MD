
# Deploying CloudTrader onto Bluemix with Eclipse

There are good instructions for deploy apps with IBM EClipse Tools for Bluemix located at https://www.ng.bluemix.net/docs/manageapps/eclipsetools/eclipsetools.html

# Deploying CloudTrader with Cloud Foundry command line interface

There are good instructions for deploying with Cloud Foundry command line interface located at https://www.ng.bluemix.net/docs/starters/install_cli.html

For this app it is as simple as running ```cf push``` from the same folder that has the manifest.yml file in it.


# One click deploy to Bluemix
To deploy this app to your Bluemix click this deploy button.
[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy)


# Adding the Log Analysis service using the ACE UI
1) Log in to the ACE UI http://api.ng.bluemix.net and click on your application. 

2) Click on the button to Add a new service. Find the LogAnalysis service and add it to your application. Then, Stop and Start your application.

3) To generate some log data, visit the application, log-in, and perform transactions such as buying and selling stocks.

4) In the ACE UI, find your LogAnalysis service and open the LogAnalysis Console.

5) To see all your server logs, enter * in the search field.

6) To import the "pipes.json.txt" sample pipe, click the Studio tab then click the down arrow. You can find this file in the CloudTrader jazzhub project.

7) You should now be able to click on the various pipes and see some interesting analytics!    



# Privacy Notice
Sample web applications that include this package may be configured to track deployments to [IBM Bluemix](https://www.bluemix.net/) and other Cloud Foundry platforms. The following information is sent to a [Deployment Tracker](https://github.com/IBM-Bluemix/cf-deployment-tracker-service) service on each deployment:

* Node.js package version
* Node.js repository URL
* Application Name (`application_name`)
* Space ID (`space_id`)
* Application Version (`application_version`)
* Application URIs (`application_uris`)

This data is collected from the `package.json` file in the sample application and the `VCAP_APPLICATION` environment variable in IBM Bluemix and other Cloud Foundry platforms. This data is used by IBM to track metrics around deployments of sample applications to IBM Bluemix to measure the usefulness of our examples, so that we can continuously improve the content we offer to you. Only deployments of sample applications that include code to ping the Deployment Tracker service will be tracked.


