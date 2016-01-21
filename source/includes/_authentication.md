# Authentication
> Each GDC API request must include "X-Auth-Token" custom header.

```shell
# With shell, you can just pass the correct header with each request
export TOKEN='your_GDC_API_token'
curl -H 'X-Auth-Token:$TOKEN' -k -O https://gdc-api.nci.nih.gov/data/64cfcd9d-8a23-4f88-95b6-49c05c7cbde4

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 53.3M    0 53.3M    0     0   513k      0 --:--:--  0:01:46 --:--:-- 1208k
```
```python
import requests

token = open("gdc-user-token.2016-01-20T22_22_14-05_00.txt").read()
data_endpt = "https://gdc-api.nci.nih.gov/data"
item_uuid = "64cfcd9d-8a23-4f88-95b6-49c05c7cbde4"
headers = {"X-Auth-Token":token}

response = request.get("{url}/{uuid}".format(url=data_endpt,uuid=item_uuid),headers=headers)

outf = open(item_uuid+".cel","wb")
outf.write(response.content)
outf.close()
```
> Make sure to replace `your_GDC_API_token` with your GDC token.

Open data and metadata in GDC can be downloaded via GDC API without authentication. However, in order to obtain access to controlled data available in GDC, researchers must first obtain an NIH eRA Commons account and authorization to access the data through the NIH database of Genotypes and Phenotypes (dbGaP). 

**How can I access controlled data in GDC?**

Once a researcher has obtained an eRA Commons account and dbGaP access, they can log into the GDC Data Portal and acquire an authentication token from the portal that will allow them to download the controlled data sets for which they have access via the GDC API.

To obtain the authentication token:

1. Log in to the GDC Data Portal by clicking the Login button at the top right of the page. This will redirect to the eRA Commons login page. 
2. Once logged in to the eRA Commons, the GDC Data Portal will recognize the user as logged in and display the username in place of the login button. 
3. Clicking the username will trigger a drop-down menu. From that menu, the option ‘Download Token’ may be selected, which will initiate an HTTPS download of a token file. 
4. This file will contain the authentication token to be used with any secure data access associated with the GDC.

<aside class="warning">
**Remember** —   The authentication token should be kept in a secure location, as it allows access to all data accessible by the associated user.
</aside>
**Token Expiration**
A token lasts for 1 month. Once it expires you will get a 401 HTTP error code.

Unauthorized access to data (for example invalid token) will produce the following error message:
' 
HTTP/1.1 403 FORBIDDEN
    {
      "error": "You don't have access to the data"
    }
'
<aside class="info">
**Remember** —   Invalid credentials will result in a server error even if the data is open access.
</aside>
