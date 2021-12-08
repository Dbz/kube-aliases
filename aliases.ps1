#!/bin/bash

# Manage persistentvolume.
function ps1_kcpv {kubectl create persistentvolume}
New-Alias -Name kcpv -Value ps1_kcpv
function ps1_kdelpv {kubectl delete persistentvolume}
New-Alias -Name kdelpv -Value ps1_kdelpv
function ps1_kdpv {kubectl describe persistentvolume}
New-Alias -Name kdpv -Value ps1_kdpv
function ps1_kgpv {kubectl get persistentvolume}
New-Alias -Name kgpv -Value ps1_kgpv
function ps1_kgpvg {kubectl get persistentvolume -o wide | grep}
New-Alias -Name kgpvg -Value ps1_kgpvg
function ps1_kgapv {kubectl get --all-namespaces -o wide persistentvolume}
New-Alias -Name kgapv -Value ps1_kgapv
function ps1_kgapvg {kubectl get --all-namespaces -o wide persistentvolume | grep}
New-Alias -Name kgapvg -Value ps1_kgapvg
function ps1_kgpvn {kubectl get persistentvolume -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgpvn -Value ps1_kgpvn
function ps1_wkgpv {watch kubectl get persistentvolume}
New-Alias -Name wkgpv -Value ps1_wkgpv
function ps1_wkgapv {watch kubectl get --all-namespaces -o wide persistentvolume}
New-Alias -Name wkgapv -Value ps1_wkgapv
function ps1_kgypv {kubectl get -o yaml persistentvolume}
New-Alias -Name kgypv -Value ps1_kgypv
function ps1_kepv {kubectl edit persistentvolume}
New-Alias -Name kepv -Value ps1_kepv

# Manage persistentvolumeclaim.
function ps1_kcpvc {kubectl create persistentvolumeclaim}
New-Alias -Name kcpvc -Value ps1_kcpvc
function ps1_kdelpvc {kubectl delete persistentvolumeclaim}
New-Alias -Name kdelpvc -Value ps1_kdelpvc
function ps1_kdpvc {kubectl describe persistentvolumeclaim}
New-Alias -Name kdpvc -Value ps1_kdpvc
function ps1_kgpvc {kubectl get persistentvolumeclaim}
New-Alias -Name kgpvc -Value ps1_kgpvc
function ps1_kgpvcg {kubectl get persistentvolumeclaim -o wide | grep}
New-Alias -Name kgpvcg -Value ps1_kgpvcg
function ps1_kgapvc {kubectl get --all-namespaces -o wide persistentvolumeclaim}
New-Alias -Name kgapvc -Value ps1_kgapvc
function ps1_kgapvcg {kubectl get --all-namespaces -o wide persistentvolumeclaim | grep}
New-Alias -Name kgapvcg -Value ps1_kgapvcg
function ps1_kgpvcn {kubectl get persistentvolumeclaim -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgpvcn -Value ps1_kgpvcn
function ps1_wkgpvc {watch kubectl get persistentvolumeclaim}
New-Alias -Name wkgpvc -Value ps1_wkgpvc
function ps1_wkgapvc {watch kubectl get --all-namespaces -o wide persistentvolumeclaim}
New-Alias -Name wkgapvc -Value ps1_wkgapvc
function ps1_kgypvc {kubectl get -o yaml persistentvolumeclaim}
New-Alias -Name kgypvc -Value ps1_kgypvc
function ps1_kepvc {kubectl edit persistentvolumeclaim}
New-Alias -Name kepvc -Value ps1_kepvc

# Manage storageclass.
function ps1_kcscls {kubectl create storageclass}
New-Alias -Name kcscls -Value ps1_kcscls
function ps1_kdelscls {kubectl delete storageclass}
New-Alias -Name kdelscls -Value ps1_kdelscls
function ps1_kdscls {kubectl describe storageclass}
New-Alias -Name kdscls -Value ps1_kdscls
function ps1_kgscls {kubectl get storageclass}
New-Alias -Name kgscls -Value ps1_kgscls
function ps1_kgsclsg {kubectl get storageclass -o wide | grep}
New-Alias -Name kgsclsg -Value ps1_kgsclsg
function ps1_kgascls {kubectl get --all-namespaces -o wide storageclass}
New-Alias -Name kgascls -Value ps1_kgascls
function ps1_kgasclsg {kubectl get --all-namespaces -o wide storageclass | grep}
New-Alias -Name kgasclsg -Value ps1_kgasclsg
function ps1_kgsclsn {kubectl get storageclass -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgsclsn -Value ps1_kgsclsn
function ps1_wkgscls {watch kubectl get storageclass}
New-Alias -Name wkgscls -Value ps1_wkgscls
function ps1_wkgascls {watch kubectl get --all-namespaces -o wide storageclass}
New-Alias -Name wkgascls -Value ps1_wkgascls
function ps1_kgyscls {kubectl get -o yaml storageclass}
New-Alias -Name kgyscls -Value ps1_kgyscls
function ps1_kescls {kubectl edit storageclass}
New-Alias -Name kescls -Value ps1_kescls

# Manage horizontalpodautoscaler.
function ps1_kchpas {kubectl create horizontalpodautoscaler}
New-Alias -Name kchpas -Value ps1_kchpas
function ps1_kdelhpas {kubectl delete horizontalpodautoscaler}
New-Alias -Name kdelhpas -Value ps1_kdelhpas
function ps1_kdhpas {kubectl describe horizontalpodautoscaler}
New-Alias -Name kdhpas -Value ps1_kdhpas
function ps1_kghpas {kubectl get horizontalpodautoscaler}
New-Alias -Name kghpas -Value ps1_kghpas
function ps1_kghpasg {kubectl get horizontalpodautoscaler -o wide | grep}
New-Alias -Name kghpasg -Value ps1_kghpasg
function ps1_kgahpas {kubectl get --all-namespaces -o wide horizontalpodautoscaler}
New-Alias -Name kgahpas -Value ps1_kgahpas
function ps1_kgahpasg {kubectl get --all-namespaces -o wide horizontalpodautoscaler | grep}
New-Alias -Name kgahpasg -Value ps1_kgahpasg
function ps1_kghpasn {kubectl get horizontalpodautoscaler -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kghpasn -Value ps1_kghpasn
function ps1_wkghpas {watch kubectl get horizontalpodautoscaler}
New-Alias -Name wkghpas -Value ps1_wkghpas
function ps1_wkgahpas {watch kubectl get --all-namespaces -o wide horizontalpodautoscaler}
New-Alias -Name wkgahpas -Value ps1_wkgahpas
function ps1_kgyhpas {kubectl get -o yaml horizontalpodautoscaler}
New-Alias -Name kgyhpas -Value ps1_kgyhpas
function ps1_kehpas {kubectl edit horizontalpodautoscaler}
New-Alias -Name kehpas -Value ps1_kehpas

# Manage ingress.
function ps1_kci {kubectl create ingress}
New-Alias -Name kci -Value ps1_kci
function ps1_kdeli {kubectl delete ingress}
New-Alias -Name kdeli -Value ps1_kdeli
function ps1_kdi {kubectl describe ingress}
New-Alias -Name kdi -Value ps1_kdi
function ps1_kgi {kubectl get ingress}
New-Alias -Name kgi -Value ps1_kgi
function ps1_kgig {kubectl get ingress -o wide | grep}
New-Alias -Name kgig -Value ps1_kgig
function ps1_kgai {kubectl get --all-namespaces -o wide ingress}
New-Alias -Name kgai -Value ps1_kgai
function ps1_kgaig {kubectl get --all-namespaces -o wide ingress | grep}
New-Alias -Name kgaig -Value ps1_kgaig
function ps1_kgin {kubectl get ingress -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgin -Value ps1_kgin
function ps1_wkgi {watch kubectl get ingress}
New-Alias -Name wkgi -Value ps1_wkgi
function ps1_wkgai {watch kubectl get --all-namespaces -o wide ingress}
New-Alias -Name wkgai -Value ps1_wkgai
function ps1_kgyi {kubectl get -o yaml ingress}
New-Alias -Name kgyi -Value ps1_kgyi
function ps1_kei {kubectl edit ingress}
New-Alias -Name kei -Value ps1_kei

# Manage pod.
function ps1_kcp {kubectl create pod}
New-Alias -Name kcp -Value ps1_kcp
function ps1_kdelp {kubectl delete pod}
New-Alias -Name kdelp -Value ps1_kdelp
function ps1_kdp {kubectl describe pod}
New-Alias -Name kdp -Value ps1_kdp
function ps1_kgp {kubectl get pod}
New-Alias -Name kgp -Value ps1_kgp
function ps1_kgpg {kubectl get pod -o wide | grep}
New-Alias -Name kgpg -Value ps1_kgpg
function ps1_kgap {kubectl get --all-namespaces -o wide pod}
New-Alias -Name kgap -Value ps1_kgap
function ps1_kgapg {kubectl get --all-namespaces -o wide pod | grep}
New-Alias -Name kgapg -Value ps1_kgapg
function ps1_kgpn {kubectl get pod -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgpn -Value ps1_kgpn
function ps1_wkgp {watch kubectl get pod}
New-Alias -Name wkgp -Value ps1_wkgp
function ps1_wkgap {watch kubectl get --all-namespaces -o wide pod}
New-Alias -Name wkgap -Value ps1_wkgap
function ps1_kgyp {kubectl get -o yaml pod}
New-Alias -Name kgyp -Value ps1_kgyp
function ps1_kep {kubectl edit pod}
New-Alias -Name kep -Value ps1_kep

# Manage service.
function ps1_kcs {kubectl create service}
New-Alias -Name kcs -Value ps1_kcs
function ps1_kdels {kubectl delete service}
New-Alias -Name kdels -Value ps1_kdels
function ps1_kds {kubectl describe service}
New-Alias -Name kds -Value ps1_kds
function ps1_kgs {kubectl get service}
New-Alias -Name kgs -Value ps1_kgs
function ps1_kgsg {kubectl get service -o wide | grep}
New-Alias -Name kgsg -Value ps1_kgsg
function ps1_kgas {kubectl get --all-namespaces -o wide service}
New-Alias -Name kgas -Value ps1_kgas
function ps1_kgasg {kubectl get --all-namespaces -o wide service | grep}
New-Alias -Name kgasg -Value ps1_kgasg
function ps1_kgsn {kubectl get service -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgsn -Value ps1_kgsn
function ps1_wkgs {watch kubectl get service}
New-Alias -Name wkgs -Value ps1_wkgs
function ps1_wkgas {watch kubectl get --all-namespaces -o wide service}
New-Alias -Name wkgas -Value ps1_wkgas
function ps1_kgys {kubectl get -o yaml service}
New-Alias -Name kgys -Value ps1_kgys
function ps1_kes {kubectl edit service}
New-Alias -Name kes -Value ps1_kes

# Manage cronjob.
function ps1_kccj {kubectl create cronjob}
New-Alias -Name kccj -Value ps1_kccj
function ps1_kdelcj {kubectl delete cronjob}
New-Alias -Name kdelcj -Value ps1_kdelcj
function ps1_kdcj {kubectl describe cronjob}
New-Alias -Name kdcj -Value ps1_kdcj
function ps1_kgcj {kubectl get cronjob}
New-Alias -Name kgcj -Value ps1_kgcj
function ps1_kgcjg {kubectl get cronjob -o wide | grep}
New-Alias -Name kgcjg -Value ps1_kgcjg
function ps1_kgacj {kubectl get --all-namespaces -o wide cronjob}
New-Alias -Name kgacj -Value ps1_kgacj
function ps1_kgacjg {kubectl get --all-namespaces -o wide cronjob | grep}
New-Alias -Name kgacjg -Value ps1_kgacjg
function ps1_kgcjn {kubectl get cronjob -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcjn -Value ps1_kgcjn
function ps1_wkgcj {watch kubectl get cronjob}
New-Alias -Name wkgcj -Value ps1_wkgcj
function ps1_wkgacj {watch kubectl get --all-namespaces -o wide cronjob}
New-Alias -Name wkgacj -Value ps1_wkgacj
function ps1_kgycj {kubectl get -o yaml cronjob}
New-Alias -Name kgycj -Value ps1_kgycj
function ps1_kecj {kubectl edit cronjob}
New-Alias -Name kecj -Value ps1_kecj

# Manage podtemplate.
function ps1_kcpt {kubectl create podtemplate}
New-Alias -Name kcpt -Value ps1_kcpt
function ps1_kdelpt {kubectl delete podtemplate}
New-Alias -Name kdelpt -Value ps1_kdelpt
function ps1_kdpt {kubectl describe podtemplate}
New-Alias -Name kdpt -Value ps1_kdpt
function ps1_kgpt {kubectl get podtemplate}
New-Alias -Name kgpt -Value ps1_kgpt
function ps1_kgptg {kubectl get podtemplate -o wide | grep}
New-Alias -Name kgptg -Value ps1_kgptg
function ps1_kgapt {kubectl get --all-namespaces -o wide podtemplate}
New-Alias -Name kgapt -Value ps1_kgapt
function ps1_kgaptg {kubectl get --all-namespaces -o wide podtemplate | grep}
New-Alias -Name kgaptg -Value ps1_kgaptg
function ps1_kgptn {kubectl get podtemplate -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgptn -Value ps1_kgptn
function ps1_wkgpt {watch kubectl get podtemplate}
New-Alias -Name wkgpt -Value ps1_wkgpt
function ps1_wkgapt {watch kubectl get --all-namespaces -o wide podtemplate}
New-Alias -Name wkgapt -Value ps1_wkgapt
function ps1_kgypt {kubectl get -o yaml podtemplate}
New-Alias -Name kgypt -Value ps1_kgypt
function ps1_kept {kubectl edit podtemplate}
New-Alias -Name kept -Value ps1_kept

# Manage resourcequota.
function ps1_kcrq {kubectl create resourcequota}
New-Alias -Name kcrq -Value ps1_kcrq
function ps1_kdelrq {kubectl delete resourcequota}
New-Alias -Name kdelrq -Value ps1_kdelrq
function ps1_kdrq {kubectl describe resourcequota}
New-Alias -Name kdrq -Value ps1_kdrq
function ps1_kgrq {kubectl get resourcequota}
New-Alias -Name kgrq -Value ps1_kgrq
function ps1_kgrqg {kubectl get resourcequota -o wide | grep}
New-Alias -Name kgrqg -Value ps1_kgrqg
function ps1_kgarq {kubectl get --all-namespaces -o wide resourcequota}
New-Alias -Name kgarq -Value ps1_kgarq
function ps1_kgarqg {kubectl get --all-namespaces -o wide resourcequota | grep}
New-Alias -Name kgarqg -Value ps1_kgarqg
function ps1_kgrqn {kubectl get resourcequota -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgrqn -Value ps1_kgrqn
function ps1_wkgrq {watch kubectl get resourcequota}
New-Alias -Name wkgrq -Value ps1_wkgrq
function ps1_wkgarq {watch kubectl get --all-namespaces -o wide resourcequota}
New-Alias -Name wkgarq -Value ps1_wkgarq
function ps1_kgyrq {kubectl get -o yaml resourcequota}
New-Alias -Name kgyrq -Value ps1_kgyrq
function ps1_kerq {kubectl edit resourcequota}
New-Alias -Name kerq -Value ps1_kerq

# Manage certificatesigningrequest.
function ps1_kccsr {kubectl create certificatesigningrequest}
New-Alias -Name kccsr -Value ps1_kccsr
function ps1_kdelcsr {kubectl delete certificatesigningrequest}
New-Alias -Name kdelcsr -Value ps1_kdelcsr
function ps1_kdcsr {kubectl describe certificatesigningrequest}
New-Alias -Name kdcsr -Value ps1_kdcsr
function ps1_kgcsr {kubectl get certificatesigningrequest}
New-Alias -Name kgcsr -Value ps1_kgcsr
function ps1_kgcsrg {kubectl get certificatesigningrequest -o wide | grep}
New-Alias -Name kgcsrg -Value ps1_kgcsrg
function ps1_kgacsr {kubectl get --all-namespaces -o wide certificatesigningrequest}
New-Alias -Name kgacsr -Value ps1_kgacsr
function ps1_kgacsrg {kubectl get --all-namespaces -o wide certificatesigningrequest | grep}
New-Alias -Name kgacsrg -Value ps1_kgacsrg
function ps1_kgcsrn {kubectl get certificatesigningrequest -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcsrn -Value ps1_kgcsrn
function ps1_wkgcsr {watch kubectl get certificatesigningrequest}
New-Alias -Name wkgcsr -Value ps1_wkgcsr
function ps1_wkgacsr {watch kubectl get --all-namespaces -o wide certificatesigningrequest}
New-Alias -Name wkgacsr -Value ps1_wkgacsr
function ps1_kgycsr {kubectl get -o yaml certificatesigningrequest}
New-Alias -Name kgycsr -Value ps1_kgycsr
function ps1_kecsr {kubectl edit certificatesigningrequest}
New-Alias -Name kecsr -Value ps1_kecsr

# Manage configmap.
function ps1_kccm {kubectl create configmap}
New-Alias -Name kccm -Value ps1_kccm
function ps1_kdelcm {kubectl delete configmap}
New-Alias -Name kdelcm -Value ps1_kdelcm
function ps1_kdcm {kubectl describe configmap}
New-Alias -Name kdcm -Value ps1_kdcm
function ps1_kgcm {kubectl get configmap}
New-Alias -Name kgcm -Value ps1_kgcm
function ps1_kgcmg {kubectl get configmap -o wide | grep}
New-Alias -Name kgcmg -Value ps1_kgcmg
function ps1_kgacm {kubectl get --all-namespaces -o wide configmap}
New-Alias -Name kgacm -Value ps1_kgacm
function ps1_kgacmg {kubectl get --all-namespaces -o wide configmap | grep}
New-Alias -Name kgacmg -Value ps1_kgacmg
function ps1_kgcmn {kubectl get configmap -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcmn -Value ps1_kgcmn
function ps1_wkgcm {watch kubectl get configmap}
New-Alias -Name wkgcm -Value ps1_wkgcm
function ps1_wkgacm {watch kubectl get --all-namespaces -o wide configmap}
New-Alias -Name wkgacm -Value ps1_wkgacm
function ps1_kgycm {kubectl get -o yaml configmap}
New-Alias -Name kgycm -Value ps1_kgycm
function ps1_kecm {kubectl edit configmap}
New-Alias -Name kecm -Value ps1_kecm

# Manage node.
function ps1_kcn {kubectl create node}
New-Alias -Name kcn -Value ps1_kcn
function ps1_kdeln {kubectl delete node}
New-Alias -Name kdeln -Value ps1_kdeln
function ps1_kdn {kubectl describe node}
New-Alias -Name kdn -Value ps1_kdn
function ps1_kgn {kubectl get node}
New-Alias -Name kgn -Value ps1_kgn
function ps1_kgng {kubectl get node -o wide | grep}
New-Alias -Name kgng -Value ps1_kgng
function ps1_kgan {kubectl get --all-namespaces -o wide node}
New-Alias -Name kgan -Value ps1_kgan
function ps1_kgang {kubectl get --all-namespaces -o wide node | grep}
New-Alias -Name kgang -Value ps1_kgang
function ps1_kgnn {kubectl get node -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgnn -Value ps1_kgnn
function ps1_wkgn {watch kubectl get node}
New-Alias -Name wkgn -Value ps1_wkgn
function ps1_wkgan {watch kubectl get --all-namespaces -o wide node}
New-Alias -Name wkgan -Value ps1_wkgan
function ps1_kgyn {kubectl get -o yaml node}
New-Alias -Name kgyn -Value ps1_kgyn
function ps1_ken {kubectl edit node}
New-Alias -Name ken -Value ps1_ken

# Manage clusterrole.
function ps1_kccr {kubectl create clusterrole}
New-Alias -Name kccr -Value ps1_kccr
function ps1_kdelcr {kubectl delete clusterrole}
New-Alias -Name kdelcr -Value ps1_kdelcr
function ps1_kdcr {kubectl describe clusterrole}
New-Alias -Name kdcr -Value ps1_kdcr
function ps1_kgcr {kubectl get clusterrole}
New-Alias -Name kgcr -Value ps1_kgcr
function ps1_kgcrg {kubectl get clusterrole -o wide | grep}
New-Alias -Name kgcrg -Value ps1_kgcrg
function ps1_kgacr {kubectl get --all-namespaces -o wide clusterrole}
New-Alias -Name kgacr -Value ps1_kgacr
function ps1_kgacrg {kubectl get --all-namespaces -o wide clusterrole | grep}
New-Alias -Name kgacrg -Value ps1_kgacrg
function ps1_kgcrn {kubectl get clusterrole -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcrn -Value ps1_kgcrn
function ps1_wkgcr {watch kubectl get clusterrole}
New-Alias -Name wkgcr -Value ps1_wkgcr
function ps1_wkgacr {watch kubectl get --all-namespaces -o wide clusterrole}
New-Alias -Name wkgacr -Value ps1_wkgacr
function ps1_kgycr {kubectl get -o yaml clusterrole}
New-Alias -Name kgycr -Value ps1_kgycr
function ps1_kecr {kubectl edit clusterrole}
New-Alias -Name kecr -Value ps1_kecr

# Manage job.
function ps1_kcj {kubectl create job}
New-Alias -Name kcj -Value ps1_kcj
function ps1_kdelj {kubectl delete job}
New-Alias -Name kdelj -Value ps1_kdelj
function ps1_kdj {kubectl describe job}
New-Alias -Name kdj -Value ps1_kdj
function ps1_kgj {kubectl get job}
New-Alias -Name kgj -Value ps1_kgj
function ps1_kgjg {kubectl get job -o wide | grep}
New-Alias -Name kgjg -Value ps1_kgjg
function ps1_kgaj {kubectl get --all-namespaces -o wide job}
New-Alias -Name kgaj -Value ps1_kgaj
function ps1_kgajg {kubectl get --all-namespaces -o wide job | grep}
New-Alias -Name kgajg -Value ps1_kgajg
function ps1_kgjn {kubectl get job -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgjn -Value ps1_kgjn
function ps1_wkgj {watch kubectl get job}
New-Alias -Name wkgj -Value ps1_wkgj
function ps1_wkgaj {watch kubectl get --all-namespaces -o wide job}
New-Alias -Name wkgaj -Value ps1_wkgaj
function ps1_kgyj {kubectl get -o yaml job}
New-Alias -Name kgyj -Value ps1_kgyj
function ps1_kej {kubectl edit job}
New-Alias -Name kej -Value ps1_kej

# Manage namespace.
function ps1_kcns {kubectl create namespace}
New-Alias -Name kcns -Value ps1_kcns
function ps1_kdelns {kubectl delete namespace}
New-Alias -Name kdelns -Value ps1_kdelns
function ps1_kdns {kubectl describe namespace}
New-Alias -Name kdns -Value ps1_kdns
function ps1_kgns {kubectl get namespace}
New-Alias -Name kgns -Value ps1_kgns
function ps1_kgnsg {kubectl get namespace -o wide | grep}
New-Alias -Name kgnsg -Value ps1_kgnsg
function ps1_kgans {kubectl get --all-namespaces -o wide namespace}
New-Alias -Name kgans -Value ps1_kgans
function ps1_kgansg {kubectl get --all-namespaces -o wide namespace | grep}
New-Alias -Name kgansg -Value ps1_kgansg
function ps1_kgnsn {kubectl get namespace -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgnsn -Value ps1_kgnsn
function ps1_wkgns {watch kubectl get namespace}
New-Alias -Name wkgns -Value ps1_wkgns
function ps1_wkgans {watch kubectl get --all-namespaces -o wide namespace}
New-Alias -Name wkgans -Value ps1_wkgans
function ps1_kgyns {kubectl get -o yaml namespace}
New-Alias -Name kgyns -Value ps1_kgyns
function ps1_kens {kubectl edit namespace}
New-Alias -Name kens -Value ps1_kens

# Manage networkpolicie.
function ps1_kcnp {kubectl create networkpolicie}
New-Alias -Name kcnp -Value ps1_kcnp
function ps1_kdelnp {kubectl delete networkpolicie}
New-Alias -Name kdelnp -Value ps1_kdelnp
function ps1_kdnp {kubectl describe networkpolicie}
New-Alias -Name kdnp -Value ps1_kdnp
function ps1_kgnp {kubectl get networkpolicie}
New-Alias -Name kgnp -Value ps1_kgnp
function ps1_kgnpg {kubectl get networkpolicie -o wide | grep}
New-Alias -Name kgnpg -Value ps1_kgnpg
function ps1_kganp {kubectl get --all-namespaces -o wide networkpolicie}
New-Alias -Name kganp -Value ps1_kganp
function ps1_kganpg {kubectl get --all-namespaces -o wide networkpolicie | grep}
New-Alias -Name kganpg -Value ps1_kganpg
function ps1_kgnpn {kubectl get networkpolicie -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgnpn -Value ps1_kgnpn
function ps1_wkgnp {watch kubectl get networkpolicie}
New-Alias -Name wkgnp -Value ps1_wkgnp
function ps1_wkganp {watch kubectl get --all-namespaces -o wide networkpolicie}
New-Alias -Name wkganp -Value ps1_wkganp
function ps1_kgynp {kubectl get -o yaml networkpolicie}
New-Alias -Name kgynp -Value ps1_kgynp
function ps1_kenp {kubectl edit networkpolicie}
New-Alias -Name kenp -Value ps1_kenp

# Manage podsecuritypolicy.
function ps1_kcpsp {kubectl create podsecuritypolicy}
New-Alias -Name kcpsp -Value ps1_kcpsp
function ps1_kdelpsp {kubectl delete podsecuritypolicy}
New-Alias -Name kdelpsp -Value ps1_kdelpsp
function ps1_kdpsp {kubectl describe podsecuritypolicy}
New-Alias -Name kdpsp -Value ps1_kdpsp
function ps1_kgpsp {kubectl get podsecuritypolicy}
New-Alias -Name kgpsp -Value ps1_kgpsp
function ps1_kgpspg {kubectl get podsecuritypolicy -o wide | grep}
New-Alias -Name kgpspg -Value ps1_kgpspg
function ps1_kgapsp {kubectl get --all-namespaces -o wide podsecuritypolicy}
New-Alias -Name kgapsp -Value ps1_kgapsp
function ps1_kgapspg {kubectl get --all-namespaces -o wide podsecuritypolicy | grep}
New-Alias -Name kgapspg -Value ps1_kgapspg
function ps1_kgpspn {kubectl get podsecuritypolicy -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgpspn -Value ps1_kgpspn
function ps1_wkgpsp {watch kubectl get podsecuritypolicy}
New-Alias -Name wkgpsp -Value ps1_wkgpsp
function ps1_wkgapsp {watch kubectl get --all-namespaces -o wide podsecuritypolicy}
New-Alias -Name wkgapsp -Value ps1_wkgapsp
function ps1_kgypsp {kubectl get -o yaml podsecuritypolicy}
New-Alias -Name kgypsp -Value ps1_kgypsp
function ps1_kepsp {kubectl edit podsecuritypolicy}
New-Alias -Name kepsp -Value ps1_kepsp

# Manage endpoint.
function ps1_kcep {kubectl create endpoint}
New-Alias -Name kcep -Value ps1_kcep
function ps1_kdelep {kubectl delete endpoint}
New-Alias -Name kdelep -Value ps1_kdelep
function ps1_kdep {kubectl describe endpoint}
New-Alias -Name kdep -Value ps1_kdep
function ps1_kgep {kubectl get endpoint}
New-Alias -Name kgep -Value ps1_kgep
function ps1_kgepg {kubectl get endpoint -o wide | grep}
New-Alias -Name kgepg -Value ps1_kgepg
function ps1_kgaep {kubectl get --all-namespaces -o wide endpoint}
New-Alias -Name kgaep -Value ps1_kgaep
function ps1_kgaepg {kubectl get --all-namespaces -o wide endpoint | grep}
New-Alias -Name kgaepg -Value ps1_kgaepg
function ps1_kgepn {kubectl get endpoint -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgepn -Value ps1_kgepn
function ps1_wkgep {watch kubectl get endpoint}
New-Alias -Name wkgep -Value ps1_wkgep
function ps1_wkgaep {watch kubectl get --all-namespaces -o wide endpoint}
New-Alias -Name wkgaep -Value ps1_wkgaep
function ps1_kgyep {kubectl get -o yaml endpoint}
New-Alias -Name kgyep -Value ps1_kgyep
function ps1_keep {kubectl edit endpoint}
New-Alias -Name keep -Value ps1_keep

# Manage event.
function ps1_kcev {kubectl create event}
New-Alias -Name kcev -Value ps1_kcev
function ps1_kdelev {kubectl delete event}
New-Alias -Name kdelev -Value ps1_kdelev
function ps1_kdev {kubectl describe event}
New-Alias -Name kdev -Value ps1_kdev
function ps1_kgev {kubectl get event}
New-Alias -Name kgev -Value ps1_kgev
function ps1_kgevg {kubectl get event -o wide | grep}
New-Alias -Name kgevg -Value ps1_kgevg
function ps1_kgaev {kubectl get --all-namespaces -o wide event}
New-Alias -Name kgaev -Value ps1_kgaev
function ps1_kgaevg {kubectl get --all-namespaces -o wide event | grep}
New-Alias -Name kgaevg -Value ps1_kgaevg
function ps1_kgevn {kubectl get event -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgevn -Value ps1_kgevn
function ps1_wkgev {watch kubectl get event}
New-Alias -Name wkgev -Value ps1_wkgev
function ps1_wkgaev {watch kubectl get --all-namespaces -o wide event}
New-Alias -Name wkgaev -Value ps1_wkgaev
function ps1_kgyev {kubectl get -o yaml event}
New-Alias -Name kgyev -Value ps1_kgyev
function ps1_keev {kubectl edit event}
New-Alias -Name keev -Value ps1_keev

# Manage poddisruptionbudget.
function ps1_kcpdb {kubectl create poddisruptionbudget}
New-Alias -Name kcpdb -Value ps1_kcpdb
function ps1_kdelpdb {kubectl delete poddisruptionbudget}
New-Alias -Name kdelpdb -Value ps1_kdelpdb
function ps1_kdpdb {kubectl describe poddisruptionbudget}
New-Alias -Name kdpdb -Value ps1_kdpdb
function ps1_kgpdb {kubectl get poddisruptionbudget}
New-Alias -Name kgpdb -Value ps1_kgpdb
function ps1_kgpdbg {kubectl get poddisruptionbudget -o wide | grep}
New-Alias -Name kgpdbg -Value ps1_kgpdbg
function ps1_kgapdb {kubectl get --all-namespaces -o wide poddisruptionbudget}
New-Alias -Name kgapdb -Value ps1_kgapdb
function ps1_kgapdbg {kubectl get --all-namespaces -o wide poddisruptionbudget | grep}
New-Alias -Name kgapdbg -Value ps1_kgapdbg
function ps1_kgpdbn {kubectl get poddisruptionbudget -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgpdbn -Value ps1_kgpdbn
function ps1_wkgpdb {watch kubectl get poddisruptionbudget}
New-Alias -Name wkgpdb -Value ps1_wkgpdb
function ps1_wkgapdb {watch kubectl get --all-namespaces -o wide poddisruptionbudget}
New-Alias -Name wkgapdb -Value ps1_wkgapdb
function ps1_kgypdb {kubectl get -o yaml poddisruptionbudget}
New-Alias -Name kgypdb -Value ps1_kgypdb
function ps1_kepdb {kubectl edit poddisruptionbudget}
New-Alias -Name kepdb -Value ps1_kepdb

# Manage replicaset.
function ps1_kcrs {kubectl create replicaset}
New-Alias -Name kcrs -Value ps1_kcrs
function ps1_kdelrs {kubectl delete replicaset}
New-Alias -Name kdelrs -Value ps1_kdelrs
function ps1_kdrs {kubectl describe replicaset}
New-Alias -Name kdrs -Value ps1_kdrs
function ps1_kgrs {kubectl get replicaset}
New-Alias -Name kgrs -Value ps1_kgrs
function ps1_kgrsg {kubectl get replicaset -o wide | grep}
New-Alias -Name kgrsg -Value ps1_kgrsg
function ps1_kgars {kubectl get --all-namespaces -o wide replicaset}
New-Alias -Name kgars -Value ps1_kgars
function ps1_kgarsg {kubectl get --all-namespaces -o wide replicaset | grep}
New-Alias -Name kgarsg -Value ps1_kgarsg
function ps1_kgrsn {kubectl get replicaset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgrsn -Value ps1_kgrsn
function ps1_wkgrs {watch kubectl get replicaset}
New-Alias -Name wkgrs -Value ps1_wkgrs
function ps1_wkgars {watch kubectl get --all-namespaces -o wide replicaset}
New-Alias -Name wkgars -Value ps1_wkgars
function ps1_kgyrs {kubectl get -o yaml replicaset}
New-Alias -Name kgyrs -Value ps1_kgyrs
function ps1_kers {kubectl edit replicaset}
New-Alias -Name kers -Value ps1_kers

# Manage rolebinding.
function ps1_kcrb {kubectl create rolebinding}
New-Alias -Name kcrb -Value ps1_kcrb
function ps1_kdelrb {kubectl delete rolebinding}
New-Alias -Name kdelrb -Value ps1_kdelrb
function ps1_kdrb {kubectl describe rolebinding}
New-Alias -Name kdrb -Value ps1_kdrb
function ps1_kgrb {kubectl get rolebinding}
New-Alias -Name kgrb -Value ps1_kgrb
function ps1_kgrbg {kubectl get rolebinding -o wide | grep}
New-Alias -Name kgrbg -Value ps1_kgrbg
function ps1_kgarb {kubectl get --all-namespaces -o wide rolebinding}
New-Alias -Name kgarb -Value ps1_kgarb
function ps1_kgarbg {kubectl get --all-namespaces -o wide rolebinding | grep}
New-Alias -Name kgarbg -Value ps1_kgarbg
function ps1_kgrbn {kubectl get rolebinding -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgrbn -Value ps1_kgrbn
function ps1_wkgrb {watch kubectl get rolebinding}
New-Alias -Name wkgrb -Value ps1_wkgrb
function ps1_wkgarb {watch kubectl get --all-namespaces -o wide rolebinding}
New-Alias -Name wkgarb -Value ps1_wkgarb
function ps1_kgyrb {kubectl get -o yaml rolebinding}
New-Alias -Name kgyrb -Value ps1_kgyrb
function ps1_kerb {kubectl edit rolebinding}
New-Alias -Name kerb -Value ps1_kerb

# Manage role.
function ps1_kcr {kubectl create role}
New-Alias -Name kcr -Value ps1_kcr
function ps1_kdelr {kubectl delete role}
New-Alias -Name kdelr -Value ps1_kdelr
function ps1_kdr {kubectl describe role}
New-Alias -Name kdr -Value ps1_kdr
function ps1_kgr {kubectl get role}
New-Alias -Name kgr -Value ps1_kgr
function ps1_kgrg {kubectl get role -o wide | grep}
New-Alias -Name kgrg -Value ps1_kgrg
function ps1_kgar {kubectl get --all-namespaces -o wide role}
New-Alias -Name kgar -Value ps1_kgar
function ps1_kgarg {kubectl get --all-namespaces -o wide role | grep}
New-Alias -Name kgarg -Value ps1_kgarg
function ps1_kgrn {kubectl get role -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgrn -Value ps1_kgrn
function ps1_wkgr {watch kubectl get role}
New-Alias -Name wkgr -Value ps1_wkgr
function ps1_wkgar {watch kubectl get --all-namespaces -o wide role}
New-Alias -Name wkgar -Value ps1_wkgar
function ps1_kgyr {kubectl get -o yaml role}
New-Alias -Name kgyr -Value ps1_kgyr
function ps1_ker {kubectl edit role}
New-Alias -Name ker -Value ps1_ker

# Manage secret.
function ps1_kcsc {kubectl create secret}
New-Alias -Name kcsc -Value ps1_kcsc
function ps1_kdelsc {kubectl delete secret}
New-Alias -Name kdelsc -Value ps1_kdelsc
function ps1_kdsc {kubectl describe secret}
New-Alias -Name kdsc -Value ps1_kdsc
function ps1_kgsc {kubectl get secret}
New-Alias -Name kgsc -Value ps1_kgsc
function ps1_kgscg {kubectl get secret -o wide | grep}
New-Alias -Name kgscg -Value ps1_kgscg
function ps1_kgasc {kubectl get --all-namespaces -o wide secret}
New-Alias -Name kgasc -Value ps1_kgasc
function ps1_kgascg {kubectl get --all-namespaces -o wide secret | grep}
New-Alias -Name kgascg -Value ps1_kgascg
function ps1_kgscn {kubectl get secret -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgscn -Value ps1_kgscn
function ps1_wkgsc {watch kubectl get secret}
New-Alias -Name wkgsc -Value ps1_wkgsc
function ps1_wkgasc {watch kubectl get --all-namespaces -o wide secret}
New-Alias -Name wkgasc -Value ps1_wkgasc
function ps1_kgysc {kubectl get -o yaml secret}
New-Alias -Name kgysc -Value ps1_kgysc
function ps1_kesc {kubectl edit secret}
New-Alias -Name kesc -Value ps1_kesc

# Manage clusterrolebinding.
function ps1_kccrb {kubectl create clusterrolebinding}
New-Alias -Name kccrb -Value ps1_kccrb
function ps1_kdelcrb {kubectl delete clusterrolebinding}
New-Alias -Name kdelcrb -Value ps1_kdelcrb
function ps1_kdcrb {kubectl describe clusterrolebinding}
New-Alias -Name kdcrb -Value ps1_kdcrb
function ps1_kgcrb {kubectl get clusterrolebinding}
New-Alias -Name kgcrb -Value ps1_kgcrb
function ps1_kgcrbg {kubectl get clusterrolebinding -o wide | grep}
New-Alias -Name kgcrbg -Value ps1_kgcrbg
function ps1_kgacrb {kubectl get --all-namespaces -o wide clusterrolebinding}
New-Alias -Name kgacrb -Value ps1_kgacrb
function ps1_kgacrbg {kubectl get --all-namespaces -o wide clusterrolebinding | grep}
New-Alias -Name kgacrbg -Value ps1_kgacrbg
function ps1_kgcrbn {kubectl get clusterrolebinding -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcrbn -Value ps1_kgcrbn
function ps1_wkgcrb {watch kubectl get clusterrolebinding}
New-Alias -Name wkgcrb -Value ps1_wkgcrb
function ps1_wkgacrb {watch kubectl get --all-namespaces -o wide clusterrolebinding}
New-Alias -Name wkgacrb -Value ps1_wkgacrb
function ps1_kgycrb {kubectl get -o yaml clusterrolebinding}
New-Alias -Name kgycrb -Value ps1_kgycrb
function ps1_kecrb {kubectl edit clusterrolebinding}
New-Alias -Name kecrb -Value ps1_kecrb

# Manage deployment.
function ps1_kcd {kubectl create deployment}
New-Alias -Name kcd -Value ps1_kcd
function ps1_kdeld {kubectl delete deployment}
New-Alias -Name kdeld -Value ps1_kdeld
function ps1_kdd {kubectl describe deployment}
New-Alias -Name kdd -Value ps1_kdd
function ps1_kgd {kubectl get deployment}
New-Alias -Name kgd -Value ps1_kgd
function ps1_kgdg {kubectl get deployment -o wide | grep}
New-Alias -Name kgdg -Value ps1_kgdg
function ps1_kgad {kubectl get --all-namespaces -o wide deployment}
New-Alias -Name kgad -Value ps1_kgad
function ps1_kgadg {kubectl get --all-namespaces -o wide deployment | grep}
New-Alias -Name kgadg -Value ps1_kgadg
function ps1_kgdn {kubectl get deployment -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgdn -Value ps1_kgdn
function ps1_wkgd {watch kubectl get deployment}
New-Alias -Name wkgd -Value ps1_wkgd
function ps1_wkgad {watch kubectl get --all-namespaces -o wide deployment}
New-Alias -Name wkgad -Value ps1_wkgad
function ps1_kgyd {kubectl get -o yaml deployment}
New-Alias -Name kgyd -Value ps1_kgyd
function ps1_ked {kubectl edit deployment}
New-Alias -Name ked -Value ps1_ked

# Manage limitrange.
function ps1_kclr {kubectl create limitrange}
New-Alias -Name kclr -Value ps1_kclr
function ps1_kdellr {kubectl delete limitrange}
New-Alias -Name kdellr -Value ps1_kdellr
function ps1_kdlr {kubectl describe limitrange}
New-Alias -Name kdlr -Value ps1_kdlr
function ps1_kglr {kubectl get limitrange}
New-Alias -Name kglr -Value ps1_kglr
function ps1_kglrg {kubectl get limitrange -o wide | grep}
New-Alias -Name kglrg -Value ps1_kglrg
function ps1_kgalr {kubectl get --all-namespaces -o wide limitrange}
New-Alias -Name kgalr -Value ps1_kgalr
function ps1_kgalrg {kubectl get --all-namespaces -o wide limitrange | grep}
New-Alias -Name kgalrg -Value ps1_kgalrg
function ps1_kglrn {kubectl get limitrange -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kglrn -Value ps1_kglrn
function ps1_wkglr {watch kubectl get limitrange}
New-Alias -Name wkglr -Value ps1_wkglr
function ps1_wkgalr {watch kubectl get --all-namespaces -o wide limitrange}
New-Alias -Name wkgalr -Value ps1_wkgalr
function ps1_kgylr {kubectl get -o yaml limitrange}
New-Alias -Name kgylr -Value ps1_kgylr
function ps1_kelr {kubectl edit limitrange}
New-Alias -Name kelr -Value ps1_kelr

# Manage statefulset.
function ps1_kcss {kubectl create statefulset}
New-Alias -Name kcss -Value ps1_kcss
function ps1_kdelss {kubectl delete statefulset}
New-Alias -Name kdelss -Value ps1_kdelss
function ps1_kdss {kubectl describe statefulset}
New-Alias -Name kdss -Value ps1_kdss
function ps1_kgss {kubectl get statefulset}
New-Alias -Name kgss -Value ps1_kgss
function ps1_kgssg {kubectl get statefulset -o wide | grep}
New-Alias -Name kgssg -Value ps1_kgssg
function ps1_kgass {kubectl get --all-namespaces -o wide statefulset}
New-Alias -Name kgass -Value ps1_kgass
function ps1_kgassg {kubectl get --all-namespaces -o wide statefulset | grep}
New-Alias -Name kgassg -Value ps1_kgassg
function ps1_kgssn {kubectl get statefulset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgssn -Value ps1_kgssn
function ps1_wkgss {watch kubectl get statefulset}
New-Alias -Name wkgss -Value ps1_wkgss
function ps1_wkgass {watch kubectl get --all-namespaces -o wide statefulset}
New-Alias -Name wkgass -Value ps1_wkgass
function ps1_kgyss {kubectl get -o yaml statefulset}
New-Alias -Name kgyss -Value ps1_kgyss
function ps1_kess {kubectl edit statefulset}
New-Alias -Name kess -Value ps1_kess

# Manage componentstatus.
function ps1_kccs {kubectl create componentstatus}
New-Alias -Name kccs -Value ps1_kccs
function ps1_kdelcs {kubectl delete componentstatus}
New-Alias -Name kdelcs -Value ps1_kdelcs
function ps1_kdcs {kubectl describe componentstatus}
New-Alias -Name kdcs -Value ps1_kdcs
function ps1_kgcs {kubectl get componentstatus}
New-Alias -Name kgcs -Value ps1_kgcs
function ps1_kgcsg {kubectl get componentstatus -o wide | grep}
New-Alias -Name kgcsg -Value ps1_kgcsg
function ps1_kgacs {kubectl get --all-namespaces -o wide componentstatus}
New-Alias -Name kgacs -Value ps1_kgacs
function ps1_kgacsg {kubectl get --all-namespaces -o wide componentstatus | grep}
New-Alias -Name kgacsg -Value ps1_kgacsg
function ps1_kgcsn {kubectl get componentstatus -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcsn -Value ps1_kgcsn
function ps1_wkgcs {watch kubectl get componentstatus}
New-Alias -Name wkgcs -Value ps1_wkgcs
function ps1_wkgacs {watch kubectl get --all-namespaces -o wide componentstatus}
New-Alias -Name wkgacs -Value ps1_wkgacs
function ps1_kgycs {kubectl get -o yaml componentstatus}
New-Alias -Name kgycs -Value ps1_kgycs
function ps1_kecs {kubectl edit componentstatus}
New-Alias -Name kecs -Value ps1_kecs

# Manage controllerrevision.
function ps1_kccrv {kubectl create controllerrevision}
New-Alias -Name kccrv -Value ps1_kccrv
function ps1_kdelcrv {kubectl delete controllerrevision}
New-Alias -Name kdelcrv -Value ps1_kdelcrv
function ps1_kdcrv {kubectl describe controllerrevision}
New-Alias -Name kdcrv -Value ps1_kdcrv
function ps1_kgcrv {kubectl get controllerrevision}
New-Alias -Name kgcrv -Value ps1_kgcrv
function ps1_kgcrvg {kubectl get controllerrevision -o wide | grep}
New-Alias -Name kgcrvg -Value ps1_kgcrvg
function ps1_kgacrv {kubectl get --all-namespaces -o wide controllerrevision}
New-Alias -Name kgacrv -Value ps1_kgacrv
function ps1_kgacrvg {kubectl get --all-namespaces -o wide controllerrevision | grep}
New-Alias -Name kgacrvg -Value ps1_kgacrvg
function ps1_kgcrvn {kubectl get controllerrevision -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgcrvn -Value ps1_kgcrvn
function ps1_wkgcrv {watch kubectl get controllerrevision}
New-Alias -Name wkgcrv -Value ps1_wkgcrv
function ps1_wkgacrv {watch kubectl get --all-namespaces -o wide controllerrevision}
New-Alias -Name wkgacrv -Value ps1_wkgacrv
function ps1_kgycrv {kubectl get -o yaml controllerrevision}
New-Alias -Name kgycrv -Value ps1_kgycrv
function ps1_kecrv {kubectl edit controllerrevision}
New-Alias -Name kecrv -Value ps1_kecrv

# Manage daemonset.
function ps1_kcds {kubectl create daemonset}
New-Alias -Name kcds -Value ps1_kcds
function ps1_kdelds {kubectl delete daemonset}
New-Alias -Name kdelds -Value ps1_kdelds
function ps1_kdds {kubectl describe daemonset}
New-Alias -Name kdds -Value ps1_kdds
function ps1_kgds {kubectl get daemonset}
New-Alias -Name kgds -Value ps1_kgds
function ps1_kgdsg {kubectl get daemonset -o wide | grep}
New-Alias -Name kgdsg -Value ps1_kgdsg
function ps1_kgads {kubectl get --all-namespaces -o wide daemonset}
New-Alias -Name kgads -Value ps1_kgads
function ps1_kgadsg {kubectl get --all-namespaces -o wide daemonset | grep}
New-Alias -Name kgadsg -Value ps1_kgadsg
function ps1_kgdsn {kubectl get daemonset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgdsn -Value ps1_kgdsn
function ps1_wkgds {watch kubectl get daemonset}
New-Alias -Name wkgds -Value ps1_wkgds
function ps1_wkgads {watch kubectl get --all-namespaces -o wide daemonset}
New-Alias -Name wkgads -Value ps1_wkgads
function ps1_kgyds {kubectl get -o yaml daemonset}
New-Alias -Name kgyds -Value ps1_kgyds
function ps1_keds {kubectl edit daemonset}
New-Alias -Name keds -Value ps1_keds

# Manage podpreset.
function ps1_kcpp {kubectl create podpreset}
New-Alias -Name kcpp -Value ps1_kcpp
function ps1_kdelpp {kubectl delete podpreset}
New-Alias -Name kdelpp -Value ps1_kdelpp
function ps1_kdpp {kubectl describe podpreset}
New-Alias -Name kdpp -Value ps1_kdpp
function ps1_kgpp {kubectl get podpreset}
New-Alias -Name kgpp -Value ps1_kgpp
function ps1_kgppg {kubectl get podpreset -o wide | grep}
New-Alias -Name kgppg -Value ps1_kgppg
function ps1_kgapp {kubectl get --all-namespaces -o wide podpreset}
New-Alias -Name kgapp -Value ps1_kgapp
function ps1_kgappg {kubectl get --all-namespaces -o wide podpreset | grep}
New-Alias -Name kgappg -Value ps1_kgappg
function ps1_kgppn {kubectl get podpreset -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgppn -Value ps1_kgppn
function ps1_wkgpp {watch kubectl get podpreset}
New-Alias -Name wkgpp -Value ps1_wkgpp
function ps1_wkgapp {watch kubectl get --all-namespaces -o wide podpreset}
New-Alias -Name wkgapp -Value ps1_wkgapp
function ps1_kgypp {kubectl get -o yaml podpreset}
New-Alias -Name kgypp -Value ps1_kgypp
function ps1_kepp {kubectl edit podpreset}
New-Alias -Name kepp -Value ps1_kepp

# Manage replicationcontroller.
function ps1_kckrc {kubectl create replicationcontroller}
New-Alias -Name kckrc -Value ps1_kckrc
function ps1_kdelkrc {kubectl delete replicationcontroller}
New-Alias -Name kdelkrc -Value ps1_kdelkrc
function ps1_kdkrc {kubectl describe replicationcontroller}
New-Alias -Name kdkrc -Value ps1_kdkrc
function ps1_kgkrc {kubectl get replicationcontroller}
New-Alias -Name kgkrc -Value ps1_kgkrc
function ps1_kgkrcg {kubectl get replicationcontroller -o wide | grep}
New-Alias -Name kgkrcg -Value ps1_kgkrcg
function ps1_kgakrc {kubectl get --all-namespaces -o wide replicationcontroller}
New-Alias -Name kgakrc -Value ps1_kgakrc
function ps1_kgakrcg {kubectl get --all-namespaces -o wide replicationcontroller | grep}
New-Alias -Name kgakrcg -Value ps1_kgakrcg
function ps1_kgkrcn {kubectl get replicationcontroller -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgkrcn -Value ps1_kgkrcn
function ps1_wkgkrc {watch kubectl get replicationcontroller}
New-Alias -Name wkgkrc -Value ps1_wkgkrc
function ps1_wkgakrc {watch kubectl get --all-namespaces -o wide replicationcontroller}
New-Alias -Name wkgakrc -Value ps1_wkgakrc
function ps1_kgykrc {kubectl get -o yaml replicationcontroller}
New-Alias -Name kgykrc -Value ps1_kgykrc
function ps1_kekrc {kubectl edit replicationcontroller}
New-Alias -Name kekrc -Value ps1_kekrc

# Manage serviceaccount.
function ps1_kcsa {kubectl create serviceaccount}
New-Alias -Name kcsa -Value ps1_kcsa
function ps1_kdelsa {kubectl delete serviceaccount}
New-Alias -Name kdelsa -Value ps1_kdelsa
function ps1_kdsa {kubectl describe serviceaccount}
New-Alias -Name kdsa -Value ps1_kdsa
function ps1_kgsa {kubectl get serviceaccount}
New-Alias -Name kgsa -Value ps1_kgsa
function ps1_kgsag {kubectl get serviceaccount -o wide | grep}
New-Alias -Name kgsag -Value ps1_kgsag
function ps1_kgasa {kubectl get --all-namespaces -o wide serviceaccount}
New-Alias -Name kgasa -Value ps1_kgasa
function ps1_kgasag {kubectl get --all-namespaces -o wide serviceaccount | grep}
New-Alias -Name kgasag -Value ps1_kgasag
function ps1_kgsan {kubectl get serviceaccount -o go-template --template '{{range .items}}{{.metadata.name}}{{\" \"}}{{end}}'}
New-Alias -Name kgsan -Value ps1_kgsan
function ps1_wkgsa {watch kubectl get serviceaccount}
New-Alias -Name wkgsa -Value ps1_wkgsa
function ps1_wkgasa {watch kubectl get --all-namespaces -o wide serviceaccount}
New-Alias -Name wkgasa -Value ps1_wkgasa
function ps1_kgysa {kubectl get -o yaml serviceaccount}
New-Alias -Name kgysa -Value ps1_kgysa
function ps1_kesa {kubectl edit serviceaccount}
New-Alias -Name kesa -Value ps1_kesa

# CLI aliases.
function ps1_k {kubectl}
New-Alias -Name k -Value ps1_k
function ps1_kg {kubectl get}
New-Alias -Name kg -Value ps1_kg
function ps1_kd {kubectl describe}
New-Alias -Name kd -Value ps1_kd
function ps1_kctx {kubectx}
New-Alias -Name kctx -Value ps1_kctx
function ps1_kns {kubens}
New-Alias -Name kns -Value ps1_kns

# Pushing/modifying configs.
function ps1_kcf {kubectl create -f}
New-Alias -Name kcf -Value ps1_kcf
function ps1_kaf {kubectl apply -f}
New-Alias -Name kaf -Value ps1_kaf
function ps1_kdf {kubectl describe -f}
New-Alias -Name kdf -Value ps1_kdf
function ps1_kgf {kubectl get -f}
New-Alias -Name kgf -Value ps1_kgf
function ps1_kef {kubectl edit -f}
New-Alias -Name kef -Value ps1_kef
function ps1_kdelf {kubectl delete -f}
New-Alias -Name kdelf -Value ps1_kdelf

# Modifying deployments.
function ps1_krd {kubectl rollout restart deployment}
New-Alias -Name krd -Value ps1_krd

# Draining nodes.
function ps1_kdrain {kubectl drain --delete-emptydir-data --force --ignore-daemonsets}
New-Alias -Name kdrain -Value ps1_kdrain

# Logging commands.
function ps1_kl {kubectl logs}
New-Alias -Name kl -Value ps1_kl
function ps1_klf {kubectl logs -f}
New-Alias -Name klf -Value ps1_klf

# Exec alias.
function ps1_keit {kubectl exec -it}
New-Alias -Name keit -Value ps1_keit
