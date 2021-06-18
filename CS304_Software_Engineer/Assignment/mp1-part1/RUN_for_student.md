## Crossfix

Crossfix provides an API interface for searching github issues containing similar bugs, trying to help developers understand issues and fix bugs. This refers to similar bugs, including bugs under similar ui, similar stack information, etc. Currently, only programs written in **Java** are supported, including Android programs written in Java.

## Workflow
We provide a tool for facilitating such a scenario that search similar issue in the GitHub. The tool could filter relevant issues which have a similar function or similar UI, so it is more likely to fix bug or find a similar repair path.

### Steps

1. Create query task by requesting http://lab3.sustech.pub/crossfix with issue URL and email. The result will be sent to the email.
2. (Optional) Check query status by requesting http://lab3.sustech.pub/result .
3. Download CSV from http://lab3.sustech.pub/download or email attachment.
4. Evaluate result CSV in the email.

If you using Linux or Mac, sending request by cURL is easier. If you are not familiar with cURL, you can use Python package `requests` to send requests.

## Create query task: http://lab3.sustech.pub/crossfix

Input:
* `url`: GitHub issue url
* `email`: Email to receive result

Output:
* JSON, including `job_id` and `msg` fields.
* CSV file, which will be sent to the email if successfully finished.

### Code samples
Shell

```bash
curl -X POST -L "http://lab3.sustech.pub:5000/crossfix" \
    -F "url=https://github.com/ankidroid/Anki-Android/issues/6432" \
    -F "email=your_email@gmail.com"
```

Python3
```python
import requests
url = 'http://lab3.sustech.pub:5000/crossfix'
payload = {
    'url': 'https://github.com/ankidroid/Anki-Android/issues/6432',
    'email': 'your_email@gmail.com'
}
r = requests.post(url, data=payload)
print(r.status_code, r.text)
```

### Sample responses

Status: 400 Bad Request

```
Bad Request: invalid issue url or email address
```

Status: 200 OK

```json
{
  "job_id": "b95b94c8688d11eb9eec20040ff1241c", 
  "msg": "Submit task successfully, the task result will send to the submitted email(your_email@gmail.com)."
}
```


## (Optional) Check query status: http://lab3.sustech.pub/result

Input:
* `job_id`: job ID

Output:
* JSON, including:
  * `job_id`: job ID,
  * `job_status`: job status,
  * `enqueued_at`: create task time in ISO format,
  * (Optional) `ended_at`: finish task time in ISO format.

### Code samples
Shell

```bash
curl -L "http://lab3.sustech.pub:5000/result?job_id=b95b94c8688d11eb9eec20040ff1241c"
```

Python3
```python
import requests
payload = {'job_id': 'b95b94c8688d11eb9eec20040ff1241c'}
r = requests.get("http://lab3.sustech.pub:5000/result", params=payload)
print(r.status_code, r.text)
```

### Sample responses

Status: 400 Bad Request

```
Bad Request: missing job_id or bad job_id
```

Status: 200 OK

**Running**

```json
{
  "enqueued_at": "2021-02-06T15:28:34.414394", 
  "job_id": "f970caf4688f11eb9eec20040ff1241c", 
  "job_status": "started"
}
```

**Queued**

```json
{
  "enqueued_at": "2021-02-06T15:28:54.535895", 
  "job_id": "056d1d58689011eb9eec20040ff1241c", 
  "job_status": "queued"
}
```

**Finished**

```json
{
  "ended_at": "2021-02-06T15:15:13.815658", 
  "enqueued_at": "2021-02-06T15:12:28.103991", 
  "job_id": "b95b94c8688d11eb9eec20040ff1241c", 
  "job_status": "finished"
}
```

## Download result CSV: http://lab3.sustech.pub/download

Input:

- `job_id`: job ID

Output:
- CSV file, which will be sent to the email if successfully finished.

### Code samples

Shell

```bash
curl -O -J "http://lab3.sustech.pub:5000/download?job_id=b95b94c8688d11eb9eec20040ff1241c"
```

Python3

```python
import requests, re
payload = {'job_id': 'b95b94c8688d11eb9eec20040ff1241c'}
r = requests.get("http://lab3.sustech.pub:5000/download", params=payload)
disposition = r.headers['Content-Disposition']
fname = re.findall("filename=(.+)", disposition)[0]
with open(fname, 'w', encoding='utf-8') as _f:
    print(r.text, file=_f)
print(r.status_code)
```

### Sample responses

Status: 400 Bad Request

```
Bad Request: missing job_id or bad job_id
```

```
Bad Request: No file
```

Status: 200 OK **Transfer the CSV file**

## Evaluate result CSV in the email

The result will be sent to the email. There are three columns in the result CSV.

1. `query_url`: query URL given by the user;
2. `keywords`: keywords for search on GitHub that extracted from the query issue;
3. `close_url`: filtered relevant issue URL.

You will need to check

1. whether `close_url` in the third column can help fix the problem `query_url` in the first column,
2. whether the `keywords` in the second column can represent the first column `query_url`, 
3. whether you can find a better keyword combination to retrieve related issues to fix the problems `query_url` in the first column.
