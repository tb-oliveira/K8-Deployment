echo "Criando imagens..."

docker build -t tbdeoliveira/ProjetobackDIO:1.0 backend/.
docker build -t tbdeoliveira/ProjetodatabaseDIO:1.0 backend/.

echo "Push das imagens!"

docker push tbdeoliveira/ProjetobackDIO:1.0
docker push tbdeoliveira/ProjetodatabaseDIO:1.0

echo "Criando Serviços"

kubectl apply -f ./services.yml

echo "Criando Deployment"

kubectl apply -f ./deployment.yml

echo "Finalizado!"