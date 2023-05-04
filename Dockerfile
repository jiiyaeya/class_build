# 1. 운영체제 및 프로그램 설치
# FROM ubuntu:22.04

# RUN sudo apt install nodejs
# RUN sudo npm install -g yarn

# 1. 운영체제 및 프로그램 설치(이미 리눅스, node, yarn까지 모두 깔려있는 컴퓨터를 다운로드함)
FROM node:14

# 2. 내 컴퓨터에 있는 폴더나 파일을 도커 컴퓨터 안으로 복사하기
# RUN mkdir myfolder -> 아래에서 카피할때 없으면 자동생성해줌 굳이 필요없디!

COPY . /myfolder/

WORKDIR /myfolder/ 

# RUN cd /myfolder/

RUN yarn install
RUN yarn build
# ================= 여기까지 미리 가능한 부분
# 3. 도커안에서 next.js실행시키기
CMD yarn start
#  실행할고 싶다면 실행!RUN -> CMD(1번밖에 못씀) 