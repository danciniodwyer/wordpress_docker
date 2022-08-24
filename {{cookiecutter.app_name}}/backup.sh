docker compose -p {{cookiecutter.app_name}} stop
docker run --rm --volumes-from {{cookiecutter.app_name}}-mysql-1 -v $(pwd):/backup ubuntu tar czvf /backup/mysql_data.tar.gz /var/lib/mysql
docker run --rm --volumes-from {{cookiecutter.app_name}}-wordpress-1 -v $(pwd):/backup ubuntu tar czvf /backup/wordpress_data.tar.gz /var/www/html
