# Common Data Transmission Problems
## Dropbox
The data in dropbox can be downloaded directly using `curl` or `wget`.
```
curl -L <address> -O
```
-----
## Google Drive
```bash
pip install gdown
gdown <file_id>
```
Here the `file_id` is the string in the link address,  e.g. if your address is `https://drive.google.com/file/d/abcdedg123/view`, then the id should be `abcdedg123`.
-----
## `scp`
