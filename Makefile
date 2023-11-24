install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory/hosts.yml -b install.yml
	
test:
	ansible-playbook --check -i inventory/hosts.yml -b install.yml

dev:
	ansible-playbook -i inventory/hosts.yml -b dev.yml

monitoring:
	ansible-playbook -i inventory/hosts.yml -b monitoring.yml

bonsai:
	ansible-playbook -i inventory/hosts.yml -b bonsai.yml

web:
	ansible-playbook -i inventory/hosts.yml -b web.yml

setup:
	ansible-playbook -i inventory/hosts.yml -b setup.yml