begin
for venda in (
		select 
            id
            , nome
			, data_venda
			, total_venda 
		from vw_venda 
        where id = :P16_ID
		)    
loop
    apex_pwa.send_push_notification (
        p_application_id => :APP_ID,
        p_user_name      => 'BRCOM',        
        p_title          => 'Venda para '||venda.nome,
        p_body           => 'Data '||to_char(venda.data_venda, 'DD/MM/YYYY')
    						||'. Valor '||to_char(venda.total_venda, 'FML999G999G999G999G990D00'),
        p_icon_url       => 'https://cdn-icons-png.flaticon.com/128/44/44493.png',
        p_target_url     => apex_util.host_url||
                            apex_page.get_url(
                               p_page   => 5,
                               p_items  => 'P5_VENDA_ID',
                               p_values => venda.id
                               ) */       );
end loop;
END;
