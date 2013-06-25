# Etsy.com using Java and Spring

This tutorial uses JBehave 3.x and Selenium 2.x to test [Etsy.com](http://etsy.com) (an live online shopping site).

## Running the stories

You should see Firefox (installed on your system) flicker as it tests Etsy.com

This will run the build and (after a minute or so) Firefox will open and test the etsy.com website:

    mvn clean integration-test 

This will run a single story (one contained in a etsy_cart.story file):

    mvn clean integration-test -DstoryFilter=etsy_cart

This will run a suite based on the meta filters in the three story files:

    mvn clean integration-test -Dmeta.filter="+color red"

If you're using Spring Tool Suite, simply import this project as a Maven project, configure the project Maven Build (right click on project -> Run As -> Run Configurations), enter these for Goals input section:
	
	clean integration-test

or

	clean integration-test -DstoryFilter=etsy_cart

or

	clean integration-test -Dmeta.filter="+color red"
	
## Viewing the results

In directory target/jbehave/view, a page named 'reports.html' has been generated, which you open that in any browser to the stories that have run and their execution status.

There should be a row for each story.  The story reports are clickable to via links on the right-most column.

## Using this tutorial to start your own JBehave-based integration tests for a web site.

The tutorial aims to provide a fully-functional project that you can use to model you own project:

1. src/main/java/org/jbehave/tutorials/etsy/EtsyDotComStories.java is the entry-point that JBehave uses to run the stories. 
2. src/main/stories contains the stories run by JBehave via EtsyDotComStories.java.
4. src/main/java/org/jbehave/tutorials/etsy/steps/EtsyDotComSteps.java contains the steps mapped to the textual steps.
5. src/main/java/org/jbehave/tutorials/etsy/pages contains the Groovy page-objects used by steps to abstract in a more manageable and maintainable way the interaction with the web pages via Selenium WebDriver.
6. src/main/resources/etsy-steps.xml contains the Spring configuration for composition the steps