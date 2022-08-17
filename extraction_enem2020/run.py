import zipfile
import requests
from io import BytesIO
import os
import boto3

# Cria um diretório para armazenar o conteúdo do enade
os.makedirs('./enem2020', exist_ok=True)

print("Extracting data...")

# Define a url e faz o download do conteúdo
url = "https://download.inep.gov.br/microdados/microdados_enem_2020.zip"
filebytes = BytesIO(requests.get(url).content)

print("Unzip files...")
# Extrai o conteúdo do zipfile
myzip = zipfile.ZipFile(filebytes)
myzip.extractall('./enem2020')


print("Upload to S3...")
s3_client = boto3.client('s3', aws_access_key_id=os.environ['AWS_ACCESS_KEY_ID'], aws_secret_access_key=os.environ['AWS_SECRET_ACCESS_KEY'])
s3_client.upload_file(
    "./enem2020/DADOS/MICRODADOS_ENEM_2020.csv", 
    "dl-landing-zone-715036709715", 
    "enem2020/MICRODADOS_ENEM_2020.csv"
)