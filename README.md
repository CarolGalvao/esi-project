# Salutis API

[![Maintainability](https://api.codeclimate.com/v1/badges/3c3ab653d7b738ad630f/maintainability)](https://codeclimate.com/github/CarolGalvao/esi-project/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/3c3ab653d7b738ad630f/test_coverage)](https://codeclimate.com/github/CarolGalvao/esi-project/test_coverage)
[![Build Status](https://travis-ci.org/CarolGalvao/esi-project.svg?branch=master)](https://travis-ci.org/CarolGalvao/esi-project)

**INTERFACE:** https://homeworkout.herokuapp.com
**API:** https://salutis.herokuapp.com

**Repositório da INTERFACE:** https://github.com/rodlmoraes/esi-project-interface

**PivotalTracker:** https://www.pivotaltracker.com/n/projects/2466931

## Integrantes

- Carolina Galvão de Oliveira - 10724135
- João Francisco Cocca Fukuda - 10843566
- Júlia Cristina de Brito Passos - 10723840
- Rodrigo Lima de Moraes - 10724420
- Rogério Ferreira Dos Santos - 10687882
- Vinícius Bueno de Carvalho Rodrigues - 10346770

## Problema

Facilitar a comunicação entre educadores físicos e pessoas que querem fazer exercícios

## Docs

### Teacher API

```
POST /api/teacher_auth - cadastro - body:
{
	"email": "prof@email.com",
	"password": "senha",
	"password_confirmation": "senha"
}
```
```
POST /api/teacher_auth/sign_in - login - body:
{
	"email": "prof@email.com",
	"password": "senha"
}
```
```
DELETE /api/teacher_auth/sign_out - logout
```

todo request authenticado precisa de uid, client, e access-token no header, eles vem no header do cadastro ou do login

### Lessons API

```
GET / redireciona para /api/lessons
```
```
GET /api/lessons - retorna as aulas e os professores atribuidos a elas (não precisa de autenticação)
```
```
POST /api/lessons - criar uma aula - body:
"lesson": {
	"name": "yoga",
	"description": "zen",
	"link": "www.google.com/yoga"
}
```

### Current Teacher API

```
GET /api/current_teacher/:id - retorna o professor que está autenticado
```
```
PUT /api/current_teacher/:id - atualiza dados do professor - body:
"teacher": {
	"name": "joaninha de fogo",
	"email": "joana@email.com"
}
```
