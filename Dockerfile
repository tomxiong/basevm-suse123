FROM flavio/opensuse-12-3
MAINTAINER Tom Xiong<tom.xiong@software.dell.com> 

# Install sles 11 sp3 repository & Refresh repositories & Update System
RUN zypper refresh && \
  zypper --gpg-auto-import-keys --non-interactive update  
  
# Install Basevm Dependencies
RUN zypper --non-interactive install --auto-agree-with-licenses \
  wget \
  ntp \
  sudo \
  iputils \
  iptables \
  sysconfig \
  vim \
  ruby \
  syslog-ng \
  tcpdump \   
  dialog \
  bc \
  expect \ 
  procinfo  \
  tcsh  \
  keyutils \
  zip \
  unzip \
  perl-Tk \
  puppet
