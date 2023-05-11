# 0x19. Postmortem
This postmortem examines the root cause and resolution of an issue that I faced during a commando project (day long hackathon) at Holberton.

<p align="center"><img src="https://memegenerator.net/img/instances/66058437/psst-over-here.jpg"/></br>u + WSGI = uWSGI</p>

## Issue Summary
For our hackathon we were tasked with creating a web application that summarized a user's GitHub commit history by authenticating a user via OAuth with GitHub's API. As a team, our group's relative unfamiliarity with OAuth and the authentication workflow presented challenges when debugging API errors. Ultimately, we were able to resolve our issues with OAuth by comparing our intended requests to the API and the actual requests that were being sent using debugging statements in the backend code. The issue centered around the fact that environment variables exported from the invoking shell were not accessible by processes being managed by a uWSGI application server being run as a daemon.

## Timeline (all in PST)
- 1:00 pm: User authentication via OAuth is manually performed by following the GitHub API recommended steps.
- 1:30 pm: Implementation in Flask application fails to reproduce steps taken manually by cURL on the command line. API returns 400-level status codes when attempting to authenticate indicating malformed request.
- 2:00 pm: OAuth related environment variables, such as consumer secret and consumer key, were verified to be correct by manual comparison with the API provided values for our application.
- 2:30 pm: Debugging statements in the Flask application involved in completing the OAuth handshake showed that the expected environment variables were absent from requests.
- 3:00 pm: Investigation on Stackoverflow and Google searches revealed other developers facing similar issues. Closer reading of the uWSGI documentation showed the environment variables must be set directly in the application `.ini` file.
- 3:30 pm: OAuth fully functional.

## Root Cause
The Flask microframework can be run independently as an application server by binding it to a host IP and port on the server. For development this is an easy way to test that the application is correctly configured and serving the right content. However, this is unreliable for deployment and does not take advantage of multiple processors or manage the security risks. When testing our OAuth implementation we worked either with `cURL` or with the development Flask application server. As a result, the issues with environment variables being invisible to the deployment uWSGI application were not apparent. After switching to a managed Flask application to more efficiently connect to our static web server the application no longer had access the cosumer secret/key to facilitate authentication with the GitHub API. In retrospect this makes sense, as the uWSGI interpreter is not running under the user that set the environment variables. Furthermore, since it is running as a daemon its parent process has `PID` of `1` (`init`), therefore does not get exported environment variables from the invoking shell.

## Correct and Preventative Measures
In the future, it would have been faster to resolve this issue had we enabled logging of the exact requests being made by our application. In addition, better use of the command line tool `tcpdump` could have exposed the headers and body of the exact request being made to the API. This would have narrowed down the nature of the problem to the environment variables being used in the application. Because environment variables always return the empty string instead of raising an error when they are not set, the application was sending empty fields rather than encountering an error.
#### Corrective Measures
- Set up logging for requests to more easily review what is being sent on the network.
- Rewrite the application to validate that Python's `os.getenv` function is at least returning a string with a length greater than `0`.
- Avoid hardcoding secure values such as the cosumer secret/key in the `.ini` file for uWSGI. Better practice might be to use a separate file containing these values with `root` permissions that is read by uWSGI at runtime before changing `uid` to one with lower permissions.
