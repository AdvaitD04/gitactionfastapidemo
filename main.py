# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello World advait2"}

@app.get("/health-check")
def read_root():
    return {"message": "machine is working fine"}