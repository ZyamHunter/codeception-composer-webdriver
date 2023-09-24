# Codeception & Composer
> Repositório dedicado aos testes do framework de automação em PHP Codeception

### PHP início
- Acessar site https://windows.php.net/download/
- Clicar na versão zip mais recente de: VS16 x64 Thread Safe
- Descompactar arquivo zip e copiar pasta e colar na pasta Program Files do Windows
- Depois copiar o caminho da pasta PHP para o PATH do windows (variável de ambiente)
- Instalar composer.exe -> https://getcomposer.org/download/
- Criar arquivo php.ini e colocar as opções
- extension_dir = "ext"
- extension=curl
- extension=mbstring
- extension=openssl
- Salvar e tentar de novo

### Para mais informações sobre o composer:
- https://getcomposer.org/
- https://getcomposer.org/doc/00-intro.md

### Comandos para criar casos de testes e como rodar eles também:
- composer require "codeception/codeception" --dev
- php vendor/bin/codecept bootstrap
- php vendor/bin/codecept generate:cest Acceptance First
- php vendor/bin/codecept run --steps

### Para mais informações sobre os comandos com codeception:
- https://codeception.com/quickstart

### Dependências necessárias para rodar os testes:
- acessar site e baixar módulo: https://www.npmjs.com/package/selenium-standalone
- composer require --dev codeception/module-webdriver

### Ou:
- npx selenium-standalone install && npx selenium-standalone start
- composer require --dev codeception/module-webdriver

### Módulos do webdriver com codeception:
- https://codeception.com/docs/modules/WebDriver

### Comandos opcional para lançar o chromedriver:
- chromedriver --url-base=/wd/hub