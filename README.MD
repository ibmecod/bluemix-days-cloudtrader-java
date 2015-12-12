
# Deploying CloudTrader onto BlueMix with Eclipse

1) Follow these instructions to pull the code into your Eclipse with RTC. You will need Eclipse for Java EE Developers.
	https://hub.jazz.net/tutorials/clients#eclipse

2) Install the CF plugins
	http://docs.cloudfoundry.com/docs/using/managing-apps/ide/sts.html#install-to-eclipse

3) Point your Eclipse to BlueMix
	In the Java EE perspective, right-click the Servers view and select New > Server.
	In the Define a New Server window, expand the Pivotal folder, select Cloud Foundry, and click Next.
	By default, this wizard points to Pivotal cloud. We will need to change this to IBM’s BlueMix. To do this, click on Manage Cloud, and click Add.
		Name: BlueMix
		URL: http://api.ng.bluemix.net
	Return to the previous screen, enter your BlueMix credentials, and select BlueMix in the URL dropdown.

4) This application requires a 'SQLDB' database service. Decide what you want to call this service, for example "cloudtrader-SQLDB123". There are two places in the application that need this name. Currently this points to "cloudtrader-SQLDB". Replace this with your new name.
		1) com/ibm/samples/trade/TradeConfig.java:
		public static String DS_NAME = "java:comp/env/jdbc/cloudtrader-SQLDB"; 
		2) WebContent/WEB-INF/web.xml
		<res-ref-name>jdbc/cloudtrader-SQLDB</res-ref-name>

5) Assuming Eclipse does not show errors, you are ready to push the application. 
		http://docs.cloudfoundry.com/docs/using/managing-apps/ide/sts.html#deploy-an-application
   		On the "Services Selection" panel, click the little icon on the upper right corner and add a SQLDB service. Be sure to call the service "MyDataSource123", or whatever name you previously chose.

6) Finish the wizard and wait for your app and service to be deployed. Then you're done! You will find the application URL on the "Overview" page when you double click on your application in the Servers tab.
   Once you launch the application, you will need to populate your database with dummy users and stocks. Find the link to do this in the "Configuration" tab on the CloudTrader homepage.

## Adding the Log Analysis service using the ACE UI
1) Log in to the ACE UI http://api.ng.bluemix.net and click on your application. 

2) Click on the button to Add a new service. Find the LogAnalysis service and add it to your application. Then, Stop and Start your application.

3) To generate some log data, visit the application, log-in, and perform transactions such as buying and selling stocks.

4) In the ACE UI, find your LogAnalysis service and open the LogAnalysis Console.

5) To see all your server logs, enter * in the search field.

6) To import the "pipes.json.txt" sample pipe, click the Studio tab then click the down arrow. You can find this file in the CloudTrader jazzhub project.

7) You should now be able to click on the various pipes and see some interesting analytics!    

# One click deploy to Bluemix
To deploy this app to your Bluemix click this deploy button.
[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy)


# Privacy Notice
Sample web applications that include this package may be configured to track deployments to [IBM Bluemix](https://www.bluemix.net/) and other Cloud Foundry platforms. The following information is sent to a [Deployment Tracker](https://github.com/IBM-Bluemix/cf-deployment-tracker-service) service on each deployment:

* Node.js package version
* Node.js repository URL
* Application Name (`application_name`)
* Space ID (`space_id`)
* Application Version (`application_version`)
* Application URIs (`application_uris`)

This data is collected from the `package.json` file in the sample application and the `VCAP_APPLICATION` environment variable in IBM Bluemix and other Cloud Foundry platforms. This data is used by IBM to track metrics around deployments of sample applications to IBM Bluemix to measure the usefulness of our examples, so that we can continuously improve the content we offer to you. Only deployments of sample applications that include code to ping the Deployment Tracker service will be tracked.


