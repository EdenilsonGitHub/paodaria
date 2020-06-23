module DefaultIconsHelper
	def ico_new(options={})
		options[:class] = "fa fa-plus f-color new #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_edit(options={})
		options[:class] = "fa fa-pencil f-color edit #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_search(options={})
		options[:class] = "fa fa-search f-color search #{options[:class]}"
		content_tag(:i, nil, options)
	end
	
	def ico_copy(options={})
		options[:class] = "fa fa-clipboard f-color copy #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_remove(options={})
		options[:class] = "fa fa-trash-o f-color remove #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_yes(options={})
		options[:class] = "fa fa-check f-color yes #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_no(options={})
		options[:class] = "fa fa-ban f-color no #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_referencia_cruzada(options={})
		options[:class] = "fa fa-sitemap f-color referencia_cruzada #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_desmembramento(options={})
		options[:class] = "fa fa-server f-color desmembramento #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_fechar(options={})
		options[:class] = "fa fa-close f-color fechar #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_tempo(options={})
		options[:class] = "fa fa-clock-o f-color tempo #{options[:class]}"
		content_tag(:i, nil, options.merge({qtiped: true, title: t('admin.grupos_tags.abastecimento_tempo.info_qtip')}))
	end

	def ico_info(options={})
		options[:class] = "fa fa-info-circle f-color info #{options[:class]}"
		content_tag(:i, nil, options.merge({qtiped: true}))
	end

	def ico_info_lado(options={})
		options[:class] = "fa fa-info-circle f-color info info-lado #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_coletavel(options={})
		options[:class] = "fa fa-mobile f-color coletavel #{options[:class]}"
		content_tag(:i, nil, options.merge({qtiped: true}))
	end

	def ico_copy(options={})
		options[:class] = "fa fa-files-o #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_refresh(options={})
		options[:class] = "fa fa-refresh #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_percent(options={})
		options[:class] = "fa fa-percent fator-inclusao #{options[:class]}"
		content_tag(:i, nil, options)
	end
	
	def ico_play(options={})
		options[:class] ="fa fa-play #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_pause(options={})
		options[:class] ="fa fa-pause #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_up(options={})
		options[:class] ="fa fa-arrow-up #{options[:class]} f-color yes"
		content_tag(:i, nil, options)
	end

	def ico_down(options={})
		options[:class] ="fa fa-arrow-down #{options[:class]} f-color no"
		content_tag(:i, nil, options)
	end

	def ico_right(options={})
		options[:class] ="fa fa-arrow-right {options[:class]} f-color yes"
		content_tag(:i, nil, options)
	end

	def ico_left(options={})
		options[:class] ="fa fa-arrow-left #{options[:class]} f-color no"
		content_tag(:i, nil, options)
	end

	def ico_equal(options={})
		options[:class] ="fa fa-ellipsis-h #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_envelope(options={})
		options[:class] = "fa fa-envelope #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_chat(options={})
		options[:class] = "fa fa-commenting #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_star(options={})
		options[:class] = "fa fa-star f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_produce(options={})
		options[:class] = "fa fa-cubes f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_close(options={})
		options[:class] = "fa fa-lock f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_open(options={})
		options[:class] = "fa fa-unlock f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_gears(options={})
		options[:class] = "fa fa-cogs f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_eye(options={})
		options[:class] = "fa fa-eye f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_line_chart(options={})
		options[:class] = "fa fa-line-chart f-color #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_square_ativo(options={})
		options[:class] = "fa fa-square #{options[:class]}"
		options[:style] = 'color: #19bb19'
		content_tag(:i, nil, options)
	end

	def ico_square_inativo(options={})
		options[:class] = "fa fa-square #{options[:class]}"
		options[:style] = 'color: #cecece;'
		content_tag(:i, nil, options)
	end

	def ico_triangulo(options={})
		options[:class] = "fa fa-exclamation-triangle #{options[:class]}"
		content_tag(:i, nil, options)
	end

	def ico_impressora(options={})
		options[:class] = "fa fa-print #{options[:class]}"
		content_tag(:i, nil, options)
	end
end