Tardis Mobile API
=================

1. During this testing phase, to set up a user/patient for testing, please go to the home page and following the 'Click to register' link.
2. Results are returned as JSON when the MIME type in the '`Accept`' header of the HTTP request is set to '`application/json`'.  Otherwise HTML is returned.

----

Logging In and Out
------------------
    POST /mobile/v1/login
* After a successful login, a session cookie is set.  Cookies must be enabled for the API to work.

<table>
<thead>
<tr><th>Form Parameter</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td><code>email</code></td><td>E-mail address provided by the user when registering.</td></tr>
<tr><td><code>password</code></td><td>Password provided by the user when registering.</td></tr>
</tbody>
</table>
<br/>

<table>
<thead>
<tr><th>JSON Result Field</th><th>Type</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td><code>status</code></td><td>String = 'OK' or 'FAIL'</td><td>Whether the login request succeeded or failed.</td></tr>
<tr><td><code>personid</code></td><td>Positive Integer</td><td>If 'status' is 'OK', the ID number of the person who logged in.</td></tr>
<tr><td><code>errorCode</code></td><td>String</td><td>If 'status' is 'FAIL', the error code.</td></tr>
<tr><td><code>errorDetails</code></td><td>String</td><td>If 'status' is 'FAIL', a human readable description of the error.</td></tr>
<tr><td><code>email</code></td><td>String</td><td>If 'status' is 'FAIL', e-mail address from the form post, if available.</td></tr>
<tr><td><code>password</code></td><td>String</td><td>If 'status' is 'FAIL', password from the form post, if available.</td></tr>
</tbody>
</table>
<br/>

<table>
<tbody>
<tr><th>Windows example</th><td><pre>set URLPREFIX=http://localhost:9000
set HTTPHEADERS=-LH "Accept: application/json"
curl %HTTPHEADERS% --data "email=%EMAIL%&password=%PASSWORD%" "%URLPREFIX%/mobile/v1/login</pre></td></tr>
<tr><th>Mac/Linux example (untested)</th><td><pre>URLPREFIX='http://localhost:9000'
HTTPHEADERS=-LH "Accept: application/json"
curl $HTTPHEADERS --data "email=$EMAIL&password=$PASSWORD" "$URLPREFIX/mobile/v1/login</pre></td></tr>
</tbody>
</table>
<br/>

    GET /mobile/v1/logout
<table>
<thead>
<tr><th>Form Parameter</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td>N/A</td><td>&nbsp;</td></tr>
</tbody>
</table>
<br/>

<table>
<thead>
<tr><th>JSON Result Field</th><th>Type</th><th>Description</th></tr>
</thead>
<tbody>
<tr><td><code>status</code></td><td>String = 'OK' or 'FAIL'</td><td>Whether the logout request succeeded or failed.</td></tr>
</tbody>
</table>
<br/>

<table>
<tbody>
<tr><th>Windows example</th><td><pre>set URLPREFIX=http://localhost:9000
set HTTPHEADERS=-LH "Accept: application/json"
curl %HTTPHEADERS% "%URLPREFIX%/mobile/v1/logout</pre></td></tr>
<tr><th>Mac/Linux example (untested)</th><td><pre>URLPREFIX='http://localhost:9000'
HTTPHEADERS=-LH "Accept: application/json"
curl "$URLPREFIX/mobile/v1/logout</pre></td></tr>
</tbody>
</table>
<br/>

----