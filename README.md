# Проектная работа
*Заготовка* (почти MVP) итоговой проектной работы курса "DevOps практики и инструменты"

## Содержание
1. Общее описание
2. Описание работы terraform (развёртывние инфраструктуры в облаке)
3. Описание работы ansible (остановка компонент Kubernetes на виртуалках)
4. Описание сборки образов приложения

## Общее описание
Для выполнения задания выбрана схема развертывания кластера Kubernetes с деплоем в него Docker контейнеров c компонентами приложения.
Для этого с помощью [Terraform скриптов](https://github.com/alexeybobovsky/devops_kursovik/tree/main/terraform)  в Yandex.Cloud разворачиваются master и workers ноды  (количество воркеров [можно менять](https://github.com/alexeybobovsky/devops_kursovik/blob/24ad6763521f14ad3ab20f49205c9880296bc547/terraform/variables.tf#L72) ), создается ансиболь инвентори файл (с помощью [шаблона TF](https://github.com/alexeybobovsky/devops_kursovik/blob/main/terraform/hosts.tpl)) и далее [Ансиблом](https://github.com/alexeybobovsky/devops_kursovik/tree/main/ansible) осуществляется установка **cubeadm**
Затем должно происходить создание деплойментов с контейнерам компонент приложения, но я не успел это сделать - только описал сборку образов [ui](https://github.com/alexeybobovsky/devops_kursovik/tree/main/app/ui/build) и [crawler](https://github.com/alexeybobovsky/devops_kursovik/tree/main/app/crawler/build)
### Cборкf образов приложения
* Build UI image

some drafts for delete after finalizing this stage
```
docker run -d --rm --network=host --name mongo mongo:5.0
#docker run -d --rm --network=host -p 27017:27017 --name mongo mongo:5.0

docker build -t fmeat/search-ui:1.0 ./app/ui/build
docker build -t fmeat/search-crawler:1.0 ./app/crawler/build

docker run -d --rm --network=host --name=ui fmeat/search-ui:1.0
docker run -d --rm --network=host --name=crawler fmeat/search-crawler:1.0

#docker run -d --rm --network=host -p 8000:8000 --name=ui fmeat/search-ui:1.0
#docker run -d -p 8000:8000 --name=ui fmeat/search-ui:1.0

docker run -d --rm --network=host --hostname search --name rabbit rabbitmq:3
```

