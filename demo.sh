#
#root@k01:~/work/canal# kubectl get svc --all-namespaces -o wide
#NAMESPACE     NAME         TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)         AGE       SELECTOR
#default       kubernetes   ClusterIP   10.96.0.1       <none>        443/TCP         1d        <none>
#demos         frontend     ClusterIP   10.103.1.152    <none>        80/TCP          4h        demo=frontend
#demos         redis        ClusterIP   10.98.106.237   <none>        6379/TCP        4h        demo=redis
#kube-system   kube-dns     ClusterIP   10.96.0.10      <none>        53/UDP,53/TCP   1d        k8s-app=kube-dns

ssh k01 '\
   while true; do \
      curl --connect-timeout 1 -s 10.103.1.152  && echo || echo "Failed to access frontend";
      sleep 1; \
   done \
   '
