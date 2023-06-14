# oracle_apex_push_notification

Aula completa no Youtube:

https://youtu.be/YtEIrM0wZug


# O que você vai aprender nessa aula?
 - Configurar envio de Push Notification
 - Criar processo de Página para envio
 - Enviar por meio de PL/SQL
 - Mudar o Icone da Push
 - Acessar página autenticada do App por meio do click na notificação
 - Saber como resolver problemas conhecidos

# Atributo p_target_url
	Quando a target URL for uma página do APP Apex, ela deve ter as seguintes configurações:

	Authentication = Public
	Deep Linking = Enabled
	Rejoin Sessions = Enabled for All Sessions
	Page Protection = Arguments Must Have Checksum

# Fontes:
* https://apex.oracle.com/pls/apex/r/apex_pm/apex-pwa-reference/push-notifications
* https://diveintoapex.com/tag/pl-sql/
