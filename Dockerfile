FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogc25zLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3Nucy1hcGIKZGVzY3Jp\
cHRpb246ICdNYW5hZ2VkIHNucyB0b3BpYycKdGFnczoKICAtIGFtYXpvbgogIC0gc25zCmJpbmRh\
YmxlOiB0cnVlCmFzeW5jOiBvcHRpb25hbApwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIGRl\
c2NyaXB0aW9uOiAnTWFuYWdlZCBTTlMgVG9waWMnCiAgICBmcmVlOiBmYWxzZQogICAgcGFyYW1l\
dGVyczoKICAgICAgLSBuYW1lOiBzdGFja19pZGVudGlmaWVyCiAgICAgICAgcmVxdWlyZWQ6IHRy\
dWUKICAgICAgICB0aXRsZTogVW5pcXVlIFN0YWNrIElkZW50aWZpZXIKICAgICAgICBkZXNjcmlw\
dGlvbjogJ1VuaXF1ZSBpZGVudGlmaWVyIHRvIGJlIGluY2x1ZGVkIGluIHRoZSBDbG91ZEZvcm1h\
dGlvbiBTdGFjayBOYW1lIHRvIHByZXZlbnQgbmFtaW5nIGNvbGxpc2lvbnMuIE11c3Qgb25seSBj\
b250YWluIGFscGhhbnVtZXJpYyBjaGFyYWN0ZXJzIGFuZCBoeXBoZW5zLiAoZS5nLiAic2FtcGxl\
LXNucy1zdGFjayIsICJwcm9kdWN0aW9uLXNucy0wOC0yMDE3IiknCiAgICAgICAgdHlwZTogc3Ry\
aW5nCiAgICAgIC0gbmFtZTogYXdzX2FjY2Vzc19rZXkKICAgICAgICByZXF1aXJlZDogdHJ1ZQog\
ICAgICAgIHRpdGxlOiBBV1MgQWNjZXNzIEtleQogICAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIEFj\
Y2VzcyBLZXkgdG8gYXV0aGVudGljYXRlIHRvIEFXUyB3aXRoLicKICAgICAgICB0eXBlOiBzdHJp\
bmcKICAgICAgLSBuYW1lOiBhd3Nfc2VjcmV0X2tleQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAg\
ICAgICAgdGl0bGU6IEFXUyBTZWNyZXQgS2V5CiAgICAgICAgZGVzY3JpcHRpb246ICdBV1MgU2Vj\
cmV0IEtleSB0byBhdXRoZW50aWNhdGUgdG8gQVdTIHdpdGguJwogICAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICAtIG5hbWU6IHJlZ2lvbgogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0\
bGU6IEFXUyBSZWdpb24KICAgICAgICBkZXNjcmlwdGlvbjogJ0FXUyBSZWdpb24gdG8gY3JlYXRl\
IFJEUyBpbnN0YW5jZSBpbi4nCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgZGVmYXVsdDog\
InVzLXdlc3QtMiIKICAgICAgLSBuYW1lOiBTdWJzY3JpcHRpb25FbmRQb2ludAogICAgICAgIHJl\
cXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IFN1YnNjcmlwdGlvbiBFbmQgUG9pbnQKICAgICAg\
ICBkZXNjcmlwdGlvbjogJ1RoZSBlbmRwb2ludCB0aGF0IHJlY2VpdmVzIG5vdGlmaWNhdGlvbnMg\
ZnJvbSB0aGUgQW1hem9uIFNOUyB0b3BpYy4gVGhlIGVuZHBvaW50IHZhbHVlIGRlcGVuZHMgb24g\
dGhlIHByb3RvY29sIHRoYXQgeW91IHNwZWNpZnkuIFRoaXMgY291bGQgYmUgYSBVUkwgb3IgQVJO\
JwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAtIG5hbWU6IFN1YnNjcmlwdGlvblByb3RvY29s\
CiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogU3Vic2NyaXB0aW9uIFByb3Rv\
Y29sCiAgICAgICAgZGVzY3JpcHRpb246ICdUaGUgc3Vic2NyaXB0aW9ucyBwcm90b2NvbCcKICAg\
ICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZWZhdWx0OiAic3FzIgogICAgbWV0YWRhdGE6CiAg\
ICAgICAgZGlzcGxheU5hbWU6ICJBbWF6b24gU05TIgogICAgICAgIGxvbmdEZXNjcmlwdGlvbjog\
IkFtYXpvbiBTaW1wbGUgTm90aWZpY2F0aW9uIFNlcnZpY2UgKEFtYXpvbiBTTlMpIGlzIGEgd2Vi\
IHNlcnZpY2UgdGhhdCBlbmFibGVzIGFwcGxpY2F0aW9ucywgZW5kLXVzZXJzLCBhbmQgZGV2aWNl\
cyB0byBpbnN0YW50bHkgc2VuZCBhbmQgcmVjZWl2ZSBub3RpZmljYXRpb25zIGZyb20gdGhlIGNs\
b3VkIgogICAgICAgIGltYWdlVXJsOiAiaHR0cHM6Ly9kMC5hd3NzdGF0aWMuY29tL2Nsb3VkLXN0\
b3JhZ2UvRGVja19EYXRhYmFzZXMucG5nIgogICAgICAgIGRvY3VtZW50YXRpb25Vcmw6ICJodHRw\
czovL2F3cy5hbWF6b24uY29tL2RvY3VtZW50YXRpb24vc25zLyIKICAgICAgICBjb3N0OiAkMC4w\
MAo="


USER apb