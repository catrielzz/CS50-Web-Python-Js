import speedtest

test = speedtest.Speedtest()
download = test.download()
upload = test.upload()

print(f"Download Speed: {download}\nUpload Speed: {upload}")