# uc15

Start server and event listener:

```
ansible-rulebook --rulebook webhook-example.yml -i inventory.yml --verbose
```

Send a non-triggering event:

```
curl -X GET http://localhost:5000 -d '{"message": "Ansible is good"}' # Will do nothing
```

Send a triggering event:

```
curl -X GET http://localhost:5000 -d '{"message": "Ansible is super cool"}' # Will trigger the rule definition in webhook-example.yml
```