#!/bin/bash

# Manage daemonset.
alias kcds="kubectl create daemonset"
alias kdelds="kubectl delete daemonset"
alias kdds="kubectl describe daemonset"
alias kgds="kubectl get daemonset"
alias kgdsg="kubectl get daemonset -o wide | grep"
alias kgads="kubectl get --all-namespaces -o wide daemonset"
alias kgadsg="kubectl get --all-namespaces -o wide daemonset | grep"
alias kgdsn="kubectl get daemonset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgds="watch kubectl get daemonset"
alias wkgads="watch kubectl get --all-namespaces -o wide daemonset"
alias kgyds="kubectl get -o yaml daemonset"
alias keds="kubectl edit daemonset"

# Manage podpreset.
alias kcpp="kubectl create podpreset"
alias kdelpp="kubectl delete podpreset"
alias kdpp="kubectl describe podpreset"
alias kgpp="kubectl get podpreset"
alias kgppg="kubectl get podpreset -o wide | grep"
alias kgapp="kubectl get --all-namespaces -o wide podpreset"
alias kgappg="kubectl get --all-namespaces -o wide podpreset | grep"
alias kgppn="kubectl get podpreset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpp="watch kubectl get podpreset"
alias wkgapp="watch kubectl get --all-namespaces -o wide podpreset"
alias kgypp="kubectl get -o yaml podpreset"
alias kepp="kubectl edit podpreset"

# Manage podsecuritypolicie.
alias kcpsp="kubectl create podsecuritypolicie"
alias kdelpsp="kubectl delete podsecuritypolicie"
alias kdpsp="kubectl describe podsecuritypolicie"
alias kgpsp="kubectl get podsecuritypolicie"
alias kgpspg="kubectl get podsecuritypolicie -o wide | grep"
alias kgapsp="kubectl get --all-namespaces -o wide podsecuritypolicie"
alias kgapspg="kubectl get --all-namespaces -o wide podsecuritypolicie | grep"
alias kgpspn="kubectl get podsecuritypolicie -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpsp="watch kubectl get podsecuritypolicie"
alias wkgapsp="watch kubectl get --all-namespaces -o wide podsecuritypolicie"
alias kgypsp="kubectl get -o yaml podsecuritypolicie"
alias kepsp="kubectl edit podsecuritypolicie"

# Manage persistentvolume.
alias kcpv="kubectl create persistentvolume"
alias kdelpv="kubectl delete persistentvolume"
alias kdpv="kubectl describe persistentvolume"
alias kgpv="kubectl get persistentvolume"
alias kgpvg="kubectl get persistentvolume -o wide | grep"
alias kgapv="kubectl get --all-namespaces -o wide persistentvolume"
alias kgapvg="kubectl get --all-namespaces -o wide persistentvolume | grep"
alias kgpvn="kubectl get persistentvolume -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpv="watch kubectl get persistentvolume"
alias wkgapv="watch kubectl get --all-namespaces -o wide persistentvolume"
alias kgypv="kubectl get -o yaml persistentvolume"
alias kepv="kubectl edit persistentvolume"

# Manage rolebinding.
alias kcrb="kubectl create rolebinding"
alias kdelrb="kubectl delete rolebinding"
alias kdrb="kubectl describe rolebinding"
alias kgrb="kubectl get rolebinding"
alias kgrbg="kubectl get rolebinding -o wide | grep"
alias kgarb="kubectl get --all-namespaces -o wide rolebinding"
alias kgarbg="kubectl get --all-namespaces -o wide rolebinding | grep"
alias kgrbn="kubectl get rolebinding -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgrb="watch kubectl get rolebinding"
alias wkgarb="watch kubectl get --all-namespaces -o wide rolebinding"
alias kgyrb="kubectl get -o yaml rolebinding"
alias kerb="kubectl edit rolebinding"

# Manage secret.
alias kcsc="kubectl create secret"
alias kdelsc="kubectl delete secret"
alias kdsc="kubectl describe secret"
alias kgsc="kubectl get secret"
alias kgscg="kubectl get secret -o wide | grep"
alias kgasc="kubectl get --all-namespaces -o wide secret"
alias kgascg="kubectl get --all-namespaces -o wide secret | grep"
alias kgscn="kubectl get secret -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgsc="watch kubectl get secret"
alias wkgasc="watch kubectl get --all-namespaces -o wide secret"
alias kgysc="kubectl get -o yaml secret"
alias kesc="kubectl edit secret"

# Manage service.
alias kcs="kubectl create service"
alias kdels="kubectl delete service"
alias kds="kubectl describe service"
alias kgs="kubectl get service"
alias kgsg="kubectl get service -o wide | grep"
alias kgas="kubectl get --all-namespaces -o wide service"
alias kgasg="kubectl get --all-namespaces -o wide service | grep"
alias kgsn="kubectl get service -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgs="watch kubectl get service"
alias wkgas="watch kubectl get --all-namespaces -o wide service"
alias kgys="kubectl get -o yaml service"
alias kes="kubectl edit service"

# Manage deployment.
alias kcd="kubectl create deployment"
alias kdeld="kubectl delete deployment"
alias kdd="kubectl describe deployment"
alias kgd="kubectl get deployment"
alias kgdg="kubectl get deployment -o wide | grep"
alias kgad="kubectl get --all-namespaces -o wide deployment"
alias kgadg="kubectl get --all-namespaces -o wide deployment | grep"
alias kgdn="kubectl get deployment -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgd="watch kubectl get deployment"
alias wkgad="watch kubectl get --all-namespaces -o wide deployment"
alias kgyd="kubectl get -o yaml deployment"
alias ked="kubectl edit deployment"

# Manage event.
alias kcev="kubectl create event"
alias kdelev="kubectl delete event"
alias kdev="kubectl describe event"
alias kgev="kubectl get event"
alias kgevg="kubectl get event -o wide | grep"
alias kgaev="kubectl get --all-namespaces -o wide event"
alias kgaevg="kubectl get --all-namespaces -o wide event | grep"
alias kgevn="kubectl get event -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgev="watch kubectl get event"
alias wkgaev="watch kubectl get --all-namespaces -o wide event"
alias kgyev="kubectl get -o yaml event"
alias keev="kubectl edit event"

# Manage job.
alias kcj="kubectl create job"
alias kdelj="kubectl delete job"
alias kdj="kubectl describe job"
alias kgj="kubectl get job"
alias kgjg="kubectl get job -o wide | grep"
alias kgaj="kubectl get --all-namespaces -o wide job"
alias kgajg="kubectl get --all-namespaces -o wide job | grep"
alias kgjn="kubectl get job -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgj="watch kubectl get job"
alias wkgaj="watch kubectl get --all-namespaces -o wide job"
alias kgyj="kubectl get -o yaml job"
alias kej="kubectl edit job"

# Manage replicationcontroller.
alias kckrc="kubectl create replicationcontroller"
alias kdelkrc="kubectl delete replicationcontroller"
alias kdkrc="kubectl describe replicationcontroller"
alias kgkrc="kubectl get replicationcontroller"
alias kgkrcg="kubectl get replicationcontroller -o wide | grep"
alias kgakrc="kubectl get --all-namespaces -o wide replicationcontroller"
alias kgakrcg="kubectl get --all-namespaces -o wide replicationcontroller | grep"
alias kgkrcn="kubectl get replicationcontroller -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgkrc="watch kubectl get replicationcontroller"
alias wkgakrc="watch kubectl get --all-namespaces -o wide replicationcontroller"
alias kgykrc="kubectl get -o yaml replicationcontroller"
alias kekrc="kubectl edit replicationcontroller"

# Manage statefulset.
alias kcss="kubectl create statefulset"
alias kdelss="kubectl delete statefulset"
alias kdss="kubectl describe statefulset"
alias kgss="kubectl get statefulset"
alias kgssg="kubectl get statefulset -o wide | grep"
alias kgass="kubectl get --all-namespaces -o wide statefulset"
alias kgassg="kubectl get --all-namespaces -o wide statefulset | grep"
alias kgssn="kubectl get statefulset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgss="watch kubectl get statefulset"
alias wkgass="watch kubectl get --all-namespaces -o wide statefulset"
alias kgyss="kubectl get -o yaml statefulset"
alias kess="kubectl edit statefulset"

# Manage clusterrolebinding.
alias kccrb="kubectl create clusterrolebinding"
alias kdelcrb="kubectl delete clusterrolebinding"
alias kdcrb="kubectl describe clusterrolebinding"
alias kgcrb="kubectl get clusterrolebinding"
alias kgcrbg="kubectl get clusterrolebinding -o wide | grep"
alias kgacrb="kubectl get --all-namespaces -o wide clusterrolebinding"
alias kgacrbg="kubectl get --all-namespaces -o wide clusterrolebinding | grep"
alias kgcrbn="kubectl get clusterrolebinding -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcrb="watch kubectl get clusterrolebinding"
alias wkgacrb="watch kubectl get --all-namespaces -o wide clusterrolebinding"
alias kgycrb="kubectl get -o yaml clusterrolebinding"
alias kecrb="kubectl edit clusterrolebinding"

# Manage configmap.
alias kccm="kubectl create configmap"
alias kdelcm="kubectl delete configmap"
alias kdcm="kubectl describe configmap"
alias kgcm="kubectl get configmap"
alias kgcmg="kubectl get configmap -o wide | grep"
alias kgacm="kubectl get --all-namespaces -o wide configmap"
alias kgacmg="kubectl get --all-namespaces -o wide configmap | grep"
alias kgcmn="kubectl get configmap -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcm="watch kubectl get configmap"
alias wkgacm="watch kubectl get --all-namespaces -o wide configmap"
alias kgycm="kubectl get -o yaml configmap"
alias kecm="kubectl edit configmap"

# Manage limitrange.
alias kclr="kubectl create limitrange"
alias kdellr="kubectl delete limitrange"
alias kdlr="kubectl describe limitrange"
alias kglr="kubectl get limitrange"
alias kglrg="kubectl get limitrange -o wide | grep"
alias kgalr="kubectl get --all-namespaces -o wide limitrange"
alias kgalrg="kubectl get --all-namespaces -o wide limitrange | grep"
alias kglrn="kubectl get limitrange -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkglr="watch kubectl get limitrange"
alias wkgalr="watch kubectl get --all-namespaces -o wide limitrange"
alias kgylr="kubectl get -o yaml limitrange"
alias kelr="kubectl edit limitrange"

# Manage pod.
alias kcp="kubectl create pod"
alias kdelp="kubectl delete pod"
alias kdp="kubectl describe pod"
alias kgp="kubectl get pod"
alias kgpg="kubectl get pod -o wide | grep"
alias kgap="kubectl get --all-namespaces -o wide pod"
alias kgapg="kubectl get --all-namespaces -o wide pod | grep"
alias kgpn="kubectl get pod -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgp="watch kubectl get pod"
alias wkgap="watch kubectl get --all-namespaces -o wide pod"
alias kgyp="kubectl get -o yaml pod"
alias kep="kubectl edit pod"

# Manage podtemplate.
alias kcpt="kubectl create podtemplate"
alias kdelpt="kubectl delete podtemplate"
alias kdpt="kubectl describe podtemplate"
alias kgpt="kubectl get podtemplate"
alias kgptg="kubectl get podtemplate -o wide | grep"
alias kgapt="kubectl get --all-namespaces -o wide podtemplate"
alias kgaptg="kubectl get --all-namespaces -o wide podtemplate | grep"
alias kgptn="kubectl get podtemplate -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpt="watch kubectl get podtemplate"
alias wkgapt="watch kubectl get --all-namespaces -o wide podtemplate"
alias kgypt="kubectl get -o yaml podtemplate"
alias kept="kubectl edit podtemplate"

# Manage replicaset.
alias kcrs="kubectl create replicaset"
alias kdelrs="kubectl delete replicaset"
alias kdrs="kubectl describe replicaset"
alias kgrs="kubectl get replicaset"
alias kgrsg="kubectl get replicaset -o wide | grep"
alias kgars="kubectl get --all-namespaces -o wide replicaset"
alias kgarsg="kubectl get --all-namespaces -o wide replicaset | grep"
alias kgrsn="kubectl get replicaset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgrs="watch kubectl get replicaset"
alias wkgars="watch kubectl get --all-namespaces -o wide replicaset"
alias kgyrs="kubectl get -o yaml replicaset"
alias kers="kubectl edit replicaset"

# Manage endpoint.
alias kcep="kubectl create endpoint"
alias kdelep="kubectl delete endpoint"
alias kdep="kubectl describe endpoint"
alias kgep="kubectl get endpoint"
alias kgepg="kubectl get endpoint -o wide | grep"
alias kgaep="kubectl get --all-namespaces -o wide endpoint"
alias kgaepg="kubectl get --all-namespaces -o wide endpoint | grep"
alias kgepn="kubectl get endpoint -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgep="watch kubectl get endpoint"
alias wkgaep="watch kubectl get --all-namespaces -o wide endpoint"
alias kgyep="kubectl get -o yaml endpoint"
alias keep="kubectl edit endpoint"

# Manage horizontalpodautoscaler.
alias kchpas="kubectl create horizontalpodautoscaler"
alias kdelhpas="kubectl delete horizontalpodautoscaler"
alias kdhpas="kubectl describe horizontalpodautoscaler"
alias kghpas="kubectl get horizontalpodautoscaler"
alias kghpasg="kubectl get horizontalpodautoscaler -o wide | grep"
alias kgahpas="kubectl get --all-namespaces -o wide horizontalpodautoscaler"
alias kgahpasg="kubectl get --all-namespaces -o wide horizontalpodautoscaler | grep"
alias kghpasn="kubectl get horizontalpodautoscaler -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkghpas="watch kubectl get horizontalpodautoscaler"
alias wkgahpas="watch kubectl get --all-namespaces -o wide horizontalpodautoscaler"
alias kgyhpas="kubectl get -o yaml horizontalpodautoscaler"
alias kehpas="kubectl edit horizontalpodautoscaler"

# Manage namespace.
alias kcns="kubectl create namespace"
alias kdelns="kubectl delete namespace"
alias kdns="kubectl describe namespace"
alias kgns="kubectl get namespace"
alias kgnsg="kubectl get namespace -o wide | grep"
alias kgans="kubectl get --all-namespaces -o wide namespace"
alias kgansg="kubectl get --all-namespaces -o wide namespace | grep"
alias kgnsn="kubectl get namespace -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgns="watch kubectl get namespace"
alias wkgans="watch kubectl get --all-namespaces -o wide namespace"
alias kgyns="kubectl get -o yaml namespace"
alias kens="kubectl edit namespace"

# Manage resourcequota.
alias kcrq="kubectl create resourcequota"
alias kdelrq="kubectl delete resourcequota"
alias kdrq="kubectl describe resourcequota"
alias kgrq="kubectl get resourcequota"
alias kgrqg="kubectl get resourcequota -o wide | grep"
alias kgarq="kubectl get --all-namespaces -o wide resourcequota"
alias kgarqg="kubectl get --all-namespaces -o wide resourcequota | grep"
alias kgrqn="kubectl get resourcequota -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgrq="watch kubectl get resourcequota"
alias wkgarq="watch kubectl get --all-namespaces -o wide resourcequota"
alias kgyrq="kubectl get -o yaml resourcequota"
alias kerq="kubectl edit resourcequota"

# Manage role.
alias kcr="kubectl create role"
alias kdelr="kubectl delete role"
alias kdr="kubectl describe role"
alias kgr="kubectl get role"
alias kgrg="kubectl get role -o wide | grep"
alias kgar="kubectl get --all-namespaces -o wide role"
alias kgarg="kubectl get --all-namespaces -o wide role | grep"
alias kgrn="kubectl get role -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgr="watch kubectl get role"
alias wkgar="watch kubectl get --all-namespaces -o wide role"
alias kgyr="kubectl get -o yaml role"
alias ker="kubectl edit role"

# Manage clusterrole.
alias kccr="kubectl create clusterrole"
alias kdelcr="kubectl delete clusterrole"
alias kdcr="kubectl describe clusterrole"
alias kgcr="kubectl get clusterrole"
alias kgcrg="kubectl get clusterrole -o wide | grep"
alias kgacr="kubectl get --all-namespaces -o wide clusterrole"
alias kgacrg="kubectl get --all-namespaces -o wide clusterrole | grep"
alias kgcrn="kubectl get clusterrole -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcr="watch kubectl get clusterrole"
alias wkgacr="watch kubectl get --all-namespaces -o wide clusterrole"
alias kgycr="kubectl get -o yaml clusterrole"
alias kecr="kubectl edit clusterrole"

# Manage ingress.
alias kci="kubectl create ingress"
alias kdeli="kubectl delete ingress"
alias kdi="kubectl describe ingress"
alias kgi="kubectl get ingress"
alias kgig="kubectl get ingress -o wide | grep"
alias kgai="kubectl get --all-namespaces -o wide ingress"
alias kgaig="kubectl get --all-namespaces -o wide ingress | grep"
alias kgin="kubectl get ingress -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgi="watch kubectl get ingress"
alias wkgai="watch kubectl get --all-namespaces -o wide ingress"
alias kgyi="kubectl get -o yaml ingress"
alias kei="kubectl edit ingress"

# Manage persistentvolumeclaim.
alias kcpvc="kubectl create persistentvolumeclaim"
alias kdelpvc="kubectl delete persistentvolumeclaim"
alias kdpvc="kubectl describe persistentvolumeclaim"
alias kgpvc="kubectl get persistentvolumeclaim"
alias kgpvcg="kubectl get persistentvolumeclaim -o wide | grep"
alias kgapvc="kubectl get --all-namespaces -o wide persistentvolumeclaim"
alias kgapvcg="kubectl get --all-namespaces -o wide persistentvolumeclaim | grep"
alias kgpvcn="kubectl get persistentvolumeclaim -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpvc="watch kubectl get persistentvolumeclaim"
alias wkgapvc="watch kubectl get --all-namespaces -o wide persistentvolumeclaim"
alias kgypvc="kubectl get -o yaml persistentvolumeclaim"
alias kepvc="kubectl edit persistentvolumeclaim"

# Manage storageclass.
alias kcscls="kubectl create storageclass"
alias kdelscls="kubectl delete storageclass"
alias kdscls="kubectl describe storageclass"
alias kgscls="kubectl get storageclass"
alias kgsclsg="kubectl get storageclass -o wide | grep"
alias kgascls="kubectl get --all-namespaces -o wide storageclass"
alias kgasclsg="kubectl get --all-namespaces -o wide storageclass | grep"
alias kgsclsn="kubectl get storageclass -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgscls="watch kubectl get storageclass"
alias wkgascls="watch kubectl get --all-namespaces -o wide storageclass"
alias kgyscls="kubectl get -o yaml storageclass"
alias kescls="kubectl edit storageclass"

# Manage certificatesigningrequest.
alias kccsr="kubectl create certificatesigningrequest"
alias kdelcsr="kubectl delete certificatesigningrequest"
alias kdcsr="kubectl describe certificatesigningrequest"
alias kgcsr="kubectl get certificatesigningrequest"
alias kgcsrg="kubectl get certificatesigningrequest -o wide | grep"
alias kgacsr="kubectl get --all-namespaces -o wide certificatesigningrequest"
alias kgacsrg="kubectl get --all-namespaces -o wide certificatesigningrequest | grep"
alias kgcsrn="kubectl get certificatesigningrequest -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcsr="watch kubectl get certificatesigningrequest"
alias wkgacsr="watch kubectl get --all-namespaces -o wide certificatesigningrequest"
alias kgycsr="kubectl get -o yaml certificatesigningrequest"
alias kecsr="kubectl edit certificatesigningrequest"

# Manage componentstatus.
alias kccs="kubectl create componentstatus"
alias kdelcs="kubectl delete componentstatus"
alias kdcs="kubectl describe componentstatus"
alias kgcs="kubectl get componentstatus"
alias kgcsg="kubectl get componentstatus -o wide | grep"
alias kgacs="kubectl get --all-namespaces -o wide componentstatus"
alias kgacsg="kubectl get --all-namespaces -o wide componentstatus | grep"
alias kgcsn="kubectl get componentstatus -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcs="watch kubectl get componentstatus"
alias wkgacs="watch kubectl get --all-namespaces -o wide componentstatus"
alias kgycs="kubectl get -o yaml componentstatus"
alias kecs="kubectl edit componentstatus"

# Manage controllerrevision.
alias kccrv="kubectl create controllerrevision"
alias kdelcrv="kubectl delete controllerrevision"
alias kdcrv="kubectl describe controllerrevision"
alias kgcrv="kubectl get controllerrevision"
alias kgcrvg="kubectl get controllerrevision -o wide | grep"
alias kgacrv="kubectl get --all-namespaces -o wide controllerrevision"
alias kgacrvg="kubectl get --all-namespaces -o wide controllerrevision | grep"
alias kgcrvn="kubectl get controllerrevision -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcrv="watch kubectl get controllerrevision"
alias wkgacrv="watch kubectl get --all-namespaces -o wide controllerrevision"
alias kgycrv="kubectl get -o yaml controllerrevision"
alias kecrv="kubectl edit controllerrevision"

# Manage poddisruptionbudget.
alias kcpdb="kubectl create poddisruptionbudget"
alias kdelpdb="kubectl delete poddisruptionbudget"
alias kdpdb="kubectl describe poddisruptionbudget"
alias kgpdb="kubectl get poddisruptionbudget"
alias kgpdbg="kubectl get poddisruptionbudget -o wide | grep"
alias kgapdb="kubectl get --all-namespaces -o wide poddisruptionbudget"
alias kgapdbg="kubectl get --all-namespaces -o wide poddisruptionbudget | grep"
alias kgpdbn="kubectl get poddisruptionbudget -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgpdb="watch kubectl get poddisruptionbudget"
alias wkgapdb="watch kubectl get --all-namespaces -o wide poddisruptionbudget"
alias kgypdb="kubectl get -o yaml poddisruptionbudget"
alias kepdb="kubectl edit poddisruptionbudget"

# Manage cronjob.
alias kccj="kubectl create cronjob"
alias kdelcj="kubectl delete cronjob"
alias kdcj="kubectl describe cronjob"
alias kgcj="kubectl get cronjob"
alias kgcjg="kubectl get cronjob -o wide | grep"
alias kgacj="kubectl get --all-namespaces -o wide cronjob"
alias kgacjg="kubectl get --all-namespaces -o wide cronjob | grep"
alias kgcjn="kubectl get cronjob -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgcj="watch kubectl get cronjob"
alias wkgacj="watch kubectl get --all-namespaces -o wide cronjob"
alias kgycj="kubectl get -o yaml cronjob"
alias kecj="kubectl edit cronjob"

# Manage networkpolicie.
alias kcnp="kubectl create networkpolicie"
alias kdelnp="kubectl delete networkpolicie"
alias kdnp="kubectl describe networkpolicie"
alias kgnp="kubectl get networkpolicie"
alias kgnpg="kubectl get networkpolicie -o wide | grep"
alias kganp="kubectl get --all-namespaces -o wide networkpolicie"
alias kganpg="kubectl get --all-namespaces -o wide networkpolicie | grep"
alias kgnpn="kubectl get networkpolicie -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgnp="watch kubectl get networkpolicie"
alias wkganp="watch kubectl get --all-namespaces -o wide networkpolicie"
alias kgynp="kubectl get -o yaml networkpolicie"
alias kenp="kubectl edit networkpolicie"

# Manage node.
alias kcn="kubectl create node"
alias kdeln="kubectl delete node"
alias kdn="kubectl describe node"
alias kgn="kubectl get node"
alias kgng="kubectl get node -o wide | grep"
alias kgan="kubectl get --all-namespaces -o wide node"
alias kgang="kubectl get --all-namespaces -o wide node | grep"
alias kgnn="kubectl get node -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgn="watch kubectl get node"
alias wkgan="watch kubectl get --all-namespaces -o wide node"
alias kgyn="kubectl get -o yaml node"
alias ken="kubectl edit node"

# Manage serviceaccount.
alias kcsa="kubectl create serviceaccount"
alias kdelsa="kubectl delete serviceaccount"
alias kdsa="kubectl describe serviceaccount"
alias kgsa="kubectl get serviceaccount"
alias kgsag="kubectl get serviceaccount -o wide | grep"
alias kgasa="kubectl get --all-namespaces -o wide serviceaccount"
alias kgasag="kubectl get --all-namespaces -o wide serviceaccount | grep"
alias kgsan="kubectl get serviceaccount -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'"
alias wkgsa="watch kubectl get serviceaccount"
alias wkgasa="watch kubectl get --all-namespaces -o wide serviceaccount"
alias kgysa="kubectl get -o yaml serviceaccount"
alias kesa="kubectl edit serviceaccount"

# CLI aliases.
alias k="kubectl"

# 
alias kg="kubectl get"

# CLI aliases.
alias kd="kubectl describe"
alias kctx="kubectx"
alias kns="kubens"

# Pushing/modifying configs.
alias kcf="kubectl create -f"
alias kaf="kubectl apply -f"
alias kdf="kubectl describe -f"
alias kgf="kubectl get -f"
alias kef="kubectl edit -f"
alias kdelf="kubectl delete -f"

# Modifying deployments.
alias krd="kubectl rollout restart deployment"

# Draining nodes.
alias kdrain="kubectl drain --delete-emptydir-data --force --ignore-daemonsets"

# Logging commands.
alias kl="kubectl logs"
alias klf="kubectl logs -f"

# Exec alias.
alias keit="kubectl exec -it"
