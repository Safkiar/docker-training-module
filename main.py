from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def read_root() -> dict[str,str]:
    return {"message": "Cat`s server works on server!"}