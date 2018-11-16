#!/bin/bash
mkdir ~/.ssh
touch ~/.ssh/authorized_keys
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5BM8Go9FkQxEiSTnJqY6hyzPKH4MVSY24LHQ6+UjmtOykk9SmiYYLUgnp/vbb+QgXUeQ+7LeYWyS5ch17ifByWVD3dBF98zOXCgB05yUrLhaKmKOpMDytCoKEoRYd0j0X/I2/kAfQya5ZJBRqkOiFiFGmBRxM4qZJZwmpQ5NTSRNYy6hC2O2fVTwQuhDkimAyKEaBxEZ86JRmfNd1lZ7Bm1E1dsQYd+gQCj/Nf60kVqPDMRt+asLYNpOgvFsWayKlvOa6XlT13zPgbOKF1eKqmTGfeOogflp//7edhx6xRWGGlk03/u5dzDJ9ck5a7uKh3OQ87kSWkTGV+FEmk5Rn Admin@STUDENT02 >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
