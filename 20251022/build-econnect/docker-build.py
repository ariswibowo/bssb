import os

client_name = 'client-local-bssb'
image_name = 'elysiannxt/econnect:' + client_name
command = 'docker build -t'

choice = input ("Are you sure to continue (y/n)? ")

if choice.lower() == "y":
    print('-- Docker Build Images --')
    print('Start building images...')
    print('Building ' + image_name + ' image...')

    # build images
    run = os.system(command + ' ' + image_name + ' -f Dockerfile .')
    
    print('Building process finished.')
elif choice.lower() == "n":
    print('Aborted...')
else:
    print('Please choose (y/n)')