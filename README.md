# uc15

## Start OTEL Demo

```
docker compose up --force-recreate --remove-orphans --detach
```

## Start Ansible

Start server and event listener:

```
ansible-rulebook --rulebook webhook-example.yml -i inventory.yml --verbose
```

### Send Test events

### Send a non-triggering Event

Open a new terminal:

```
curl -X POST http://localhost:5000 -d '{"message": "Ansible is good"}' # Will do nothing
```

### Send a Triggering Event

```
curl -X POST http://localhost:5000 -d '{"message": "Ansible is super cool"}' # Will trigger the rule definition in webhook-example.yml
```