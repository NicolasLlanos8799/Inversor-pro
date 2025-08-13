bootstrap:
	pip install -r apps/api/requirements.txt || true
	cd apps/web && npm install || true

up:
	docker compose up -d --build

test:
	docker compose exec api pytest
	cd apps/web && npm run test || true

down:
	docker compose down
