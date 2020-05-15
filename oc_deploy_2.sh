
t1=$(node -e "console.log(new Date().getTime())")

app_image_name="lab_deploy_test" \
app_kube_name="lab_deploy_test" \
project_name="lab_deploy_test" \
~/playin/openshift_test/deploy_pwd_image.sh 

t2=$(node -e "console.log(new Date().getTime())")
node -e "console.log(($t2-$t1)/1000+' seconds')"
