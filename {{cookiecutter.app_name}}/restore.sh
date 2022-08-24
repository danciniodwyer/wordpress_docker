docker compose -p {{cookiecutter.app_name}} stop
docker volume rm {{cookiecutter.app_name}}_mysql_data {{cookiecutter.app_name}}_wordpress_data
docker run -it --rm -v {{cookiecutter.app_name}}_mysql_data:/var/lib/mysql -v $(pwd):/backup ubuntu tar zxvf /backup/mysql_data.tar.gz
docker run -it --rm -v {{cookiecutter.app_name}}_wordpress_data:/var/www/html -v $(pwd):/backup ubuntu tar zxvf /backup/wordpress_data.tar.gz
