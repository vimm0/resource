1.django.apps
	class AppConfig
		Configurable attributes¶
			AppConfig.name¶
			AppConfig.label¶
			AppConfig.verbose_name¶
			AppConfig.path¶

		Read-only attributes
			AppConfig.module¶
			AppConfig.models_module

		Methods
			AppConfig.get_models()
			AppConfig.get_model(model_name)
			AppConfig.ready()

		Application registry
			apps.ready
			apps.get_app_configs()
			apps.get_app_config(app_label)
			apps.is_installed(app_name)
			apps.get_model(app_label, model_name)

2.django.conf
	


django.contrib.auth

	class models.User
	fields:
		username
		first_name
		last_name
		email
		password
		groups
		user_permissions¶
		is_staff
		is_active
		is_superuser
		last_login
		date_joined

	Attributes:
		is_authenticated
		is_anonymous

	Methods:
		get_username()
		get_full_name()
		get_short_name()
		set_password(raw_password)
		check_password(raw_password)
		set_unusable_password()
		has_usable_password()
		get_group_permissions(obj=None)
		get_all_permissions(obj=None)
		has_perm(perm, obj=None)
		has_perms(perm_list, obj=None)
		has_module_perms(package_name)
		email_user(subject, message, from_email=None, **kwargs)

	Manager Methods
	class models.UserManager
		create_user(username, email=None, password=None, **extra_fields)
		create_superuser(username, email, password, **extra_fields)

	AnonymousUser object
	class models.AnonymousUser

	Permission model
	class models.Permission
	Fields:
		name 
		content_type 
		codename

	Validators
		class validators.ASCIIUsernameValidator¶
		class validators.UnicodeUsernameValidator¶

	Login and logout signals
		user_logged_in()
			sender
			request
			user
		user_logged_out()
			sender
			request
			user
		user_login_failed()
			sender
			credentials


django.contrib.gis.utils.ogrinspect, 848
django.contrib.gis.widgets, 779
django.contrib.humanize, 855
django.contrib.messages, 857
c
django.contrib.messages.middleware, 1038
django.conf.urls, 1311
>>> dir(django.conf.urls)
['ImproperlyConfigured', 'LocaleRegexURLResolver', 'RegexURLPattern', 'RegexURLResolver', 'RemovedInDjango110Warning', 'RemovedInDjango20Warning', '__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__', 'handler400', 'handler403', 'handler404', 'handler500', 'import_module', 'include', 'patterns', 'six', 'url', 'warnings']
	
	static(): static.static(prefix, view=django.views.static.serve, **kwargs)
	url():url(regex, view, kwargs=None, name=None)
	include():
				include(module, namespace=None, app_name=None)
				include(pattern_list)
				include((pattern_list, app_namespace), namespace=None)
	handler400:’django.views.defaults.bad_request’.(Bad Request)
	handler403:’django.views.defaults.permission_denied’.(Permission Denied)
	handler404:’django.views.defaults.page_not_found’.(Page Not Found or Resource doesnot exist)
	handler500:’django.views.defaults.server_error’.(Sever Error when runtime error in view)
django.contrib.postgres, 863
django.conf.urls.i18n, 444
django.contrib.postgres.aggregates, 864
django.contrib.admin, 678
django.contrib.postgres.validators, 885
django.contrib.admindocs, 684
django.contrib.redirects, 885
django.contrib.auth, 392
django.contrib.sessions, 205
django.contrib.auth.backends, 734
django.contrib.sessions.middleware, 1040
django.contrib.auth.forms, 365
django.contrib.sitemaps,
887
django.contrib.auth.hashers, 373
django.contrib.sites,
894
django.contrib.auth.middleware, 1040
django.contrib.auth.password_validation, django.contrib.sites.middleware, 1040
django.contrib.staticfiles, 901
374
django.contrib.syndication, 907
django.contrib.auth.signals, 733
django.core.checks, 515
django.contrib.auth.views, 357
django.core.exceptions, 970
django.contrib.contenttypes, 735
django.core.files, 973
django.contrib.contenttypes.admin, 741
django.core.files.storage, 976
django.contrib.contenttypes.fields, 738
django.core.files.uploadedfile, 978
django.contrib.contenttypes.forms, 740
django.core.files.uploadhandler, 979
django.contrib.flatpages, 741
django.core.mail, 415
django.contrib.gis, 746
django.core.management, 523
django.contrib.gis.admin, 850
django.core.paginator, 479
django.contrib.gis.db.backends, 772
django.core.signals, 1234
django.contrib.gis.db.models, 769
django.contrib.gis.db.models.functions, django.core.signing, 413
django.core.validators, 1327
796
django.contrib.gis.feeds, 851
d
django.contrib.gis.forms, 778
django.db, 84
django.contrib.gis.gdal, 820
django.db.backends, 1235
django.contrib.gis.geoip, 841
django.db.backends.base.schema, 1181
django.contrib.gis.geoip2, 844
django.db.migrations, 294
django.contrib.gis.geos, 805
django.db.migrations.operations, 1042
django.contrib.gis.measure, 803
django.contrib.gis.serializers.geojson, django.db.models, 84
django.db.models.fields, 1049
848
django.db.models.fields.related, 1064
django.contrib.gis.utils, 846
django.db.models.functions, 1156
django.contrib.gis.utils.layermapping,
django.db.models.functions.datetime,
django.db.models.lookups, 1141
django.db.models.options, 1075
django.db.models.signals, 1228
django.db.transaction, 141
django.dispatch, 511
f
django.forms, 981
django.forms.fields, 998
django.forms.formsets, 227
django.forms.models, 237
django.forms.widgets, 1019
h
django.http, 1167

mM
django.utils.module_loading, 1323
>>> dir(django.utils.module_loading)
['__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'autodiscover_modules', 'copy', 'import_module', 'import_string', 'importlib_find', 'module_dir', 'module_has_submodule', 'os', 'six', 'sys']
	import_string(dotted_path)

django.utils.safestring, 1323
>>> dir(django.utils.safestring)
['EscapeBytes', 'EscapeData', 'EscapeString', 'EscapeText', 'Promise', 'SafeBytes', 'SafeData', 'SafeString', 'SafeText', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'curry', 'mark_for_escaping', 'mark_safe', 'six']
	class SafeBytes
	class SafeString
	class SafeText
	class SafeUnicode
	mark_safe(s)
	mark_for_escaping(s)
django.utils.six, 489
django.utils.text, 1324
>>> dir(django.utils.text)
['BytesIO', 'GzipFile', 'SafeText', 'SimpleLazyObject', 'StreamingBuffer', 'Truncator', '_', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_entity_re', '_replace_entity', 'allow_lazy', 'camel_case_to_spaces', 'capfirst', 'compress_sequence', 'compress_string', 'force_text', 'get_text_list', 'get_valid_filename', 'html_entities', 'mark_safe', 'normalize_newlines', 'pgettext', 'phone2numeric', 're', 're_camel_case', 're_chars', 're_newlines', 're_tag', 're_words', 'six', 'slugify', 'smart_split', 'smart_split_re', 'ugettext_lazy', 'unescape_entities', 'unescape_string_literal', 'unicode_literals', 'unicodedata', 'wrap']
	slugify(allow_unicode=False)

django.utils.timezone, 1324
>>> dir(django.utils.timezone)
['ContextDecorator', 'FixedOffset', 'LocalTimezone', 'ReferenceLocalTimezone', 'UTC', 'ZERO', '__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_active', '_get_timezone_name', '_time', 'activate', 'datetime', 'deactivate', 'get_current_timezone', 'get_current_timezone_name', 'get_default_timezone', 'get_default_timezone_name', 'get_fixed_timezone', 'is_aware', 'is_naive', 'local', 'localtime', 'lru_cache', 'make_aware', 'make_naive', 'now', 'override', 'pytz', 'settings', 'six', 'sys', 'template_localtime', 'timedelta', 'tzinfo', 'utc']
utc
class FixedOffset(offset=None, name=None)
	get_fixed_timezone(offset)
	get_default_timezone()
	get_default_timezone_name()
	get_current_timezone()
	get_current_timezone_name()
	deactivate()
	override(timezone)
	localtime(value, timezone=None)
	now()
	is_aware(value)
	is_naive(value)
	make_aware(value, timezone=None, is_dst=None)
	make_naive(value, timezone=None)

django.utils.translation, 425
>>> dir(django.utils.translation)
['ContextDecorator', 'LANGUAGE_SESSION_KEY', 'TranslatorCommentWarning', '__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__', '_string_concat', '_trans', 'activate', 'check_for_language', 'deactivate', 'deactivate_all', 'force_text', 'get_language', 'get_language_bidi', 'get_language_from_path', 'get_language_from_request', 'get_language_info', 'gettext', 'gettext_lazy', 'gettext_noop', 'lazy', 'lazy_number', 'ngettext', 'ngettext_lazy', 'npgettext', 'npgettext_lazy', 'override', 'pgettext', 'pgettext_lazy', 're', 'six', 'string_concat', 'templatize', 'to_locale', 'trans_real', 'trim_whitespace', 'trim_whitespace_re', 'ugettext', 'ugettext_lazy', 'ugettext_noop', 'ungettext', 'ungettext_lazy', 'unicode_literals']
	gettext(message)
	ugettext(message)
	pgettext(context, message)
	gettext_lazy(message)
	ugettext_lazy(message)
	pgettext_lazy(context, message)
	gettext_noop(message)
	ugettext_noop(message)
	ngettext(singular, plural, number)
	ungettext(singular, plural, number)
	npgettext(context, singular, plural, number)
	ngettext_lazy(singular, plural, number)
	ungettext_lazy(singular, plural, number)
	npgettext_lazy(context, singular, plural, number)
	string_concat(*strings)
	activate(language)
	deactivate()
	deactivate_all()
	override(language, deactivate=False)
	check_for_language(lang_code)
	get_language()
	get_language_bidi()
	get_language_from_request(request, check_path=False)
	to_locale(language)
	templatize(src)
	LANGUAGE_SESSION_KEY

v
django.views, 1331
>>> dir(django.views)
['__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__', 'debug', 'decorators', 'generic']
	static.serve(request, path, document_root, show_indexes=False)
Error views
	The 404 (page not found) view: defaults.page_not_found(request, exception, template_name=‘404.html’)
	The 500 (server error) view: defaults.server_error(request, template_name=‘500.html’)
	The 403 (HTTP Forbidden) view: defaults.permission_denied(request, exception, template_name=‘403.html’)
	The 400 (bad request) view: defaults.bad_request(request, exception, template_name=‘400.html’)

django.views.decorators.cache, 192
>>> dir(django.views.decorators.cache)
['CacheMiddleware', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'add_never_cache_headers', 'available_attrs', 'cache_control', 'cache_page', 'decorator_from_middleware_with_args', 'never_cache', 'patch_cache_control', 'wraps']
	cache_control(**kwargs)
	never_cache(view_func)

django.views.decorators.csrf, 927
>>> dir(django.views.decorators.csrf)
['CsrfViewMiddleware', '_EnsureCsrfCookie', '_EnsureCsrfToken', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'available_attrs', 'csrf_exempt', 'csrf_protect', 'decorator_from_middleware', 'ensure_csrf_cookie', 'get_token', 'requires_csrf_token', 'wraps']
	csrf_protect(view)

django.views.decorators.gzip, 192
	gzip_page()

django.views.decorators.http, 191
	require_http_methods(request_method_list)
	require_GET()
	require_POST()
	require_safe()
Conditional View Processing
	condition(etag_func=None, last_modified_func=None)
	etag(etag_func)
	last_modified(last_modified_func)

django.views.decorators.vary, 192
	vary_on_cookie(func)
	vary_on_headers(*headers)

django.views.generic.dates, 638
>>> dir(django.views.generic.dates)
['ArchiveIndexView', 'BaseArchiveIndexView', 'BaseDateDetailView', 'BaseDateListView', 'BaseDayArchiveView', 'BaseDetailView', 'BaseMonthArchiveView', 'BaseTodayArchiveView', 'BaseWeekArchiveView', 'BaseYearArchiveView', 'DateDetailView', 'DateMixin', 'DayArchiveView', 'DayMixin', 'Http404', 'ImproperlyConfigured', 'MonthArchiveView', 'MonthMixin', 'MultipleObjectMixin', 'MultipleObjectTemplateResponseMixin', 'SingleObjectTemplateResponseMixin', 'TodayArchiveView', 'View', 'WeekArchiveView', 'WeekMixin', 'YearArchiveView', 'YearMixin', '_', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_date_from_string', '_get_next_prev', 'cached_property', 'datetime', 'force_str', 'force_text', 'models', 'settings', 'timezone', 'timezone_today', 'unicode_literals']
class ArchiveIndexView
class YearArchiveView
	make_object_list
	get_make_object_list()
class MonthArchiveView
class WeekArchiveView
class DayArchiveView
class TodayArchiveView
class DateDetailView
Base views:
class BaseArchiveIndexView
class BaseYearArchiveView
class BaseMonthArchiveView
class BaseWeekArchiveView
class BaseDayArchiveView
class BaseTodayArchiveView
class BaseDateDetailView

django.views.i18n, 438
django.middleware, 1035
django.middleware.cache, 1036
django.middleware.clickjacking, 1040
django.middleware.common, 1036
django.middleware.csrf, 1040
django.middleware.exception, 1036
django.middleware.gzip, 1037
django.middleware.http, 1037
django.middleware.locale, 1037
django.middleware.security, 1038

sS
django.shortcuts, 196
	render(): render(request, template_name, context=None, content_type=None, status=None, using=None)
	render_to_response(): render_to_response(template_name, context=None, content_type=None, status=None, using=None)
	redirect():redirect(to, permanent=False, *args, **kwargs)
	get_object_or_404(): get_object_or_404(klass, *args, **kwargs)
	get_list_or_404(): get_list_or_404(klass, *args, **kwargs)


tT
django.template, 259
>>> dir(django.template)
['Context', 'ContextPopException', 'Engine', 'EngineHandler', 'Library', 'Node', 'NodeList', 'Origin', 'RequestContext', 'StringOrigin', 'Template', 'TemplateDoesNotExist', 'TemplateSyntaxError', 'Variable', 'VariableDoesNotExist', '__all__', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__path__', '__spec__', 'backends', 'base', 'context', 'defaultfilters', 'defaulttags', 'engine', 'engines', 'exceptions', 'library', 'loader', 'loader_tags', 'loaders', 'resolve_variable', 'response', 'smartif', 'utils']
	get_template(template_name, using=None)
	select_template(template_name_list, using=None)
	exception TemplateDoesNotExist(msg, tried=None, backend=None, chain=None)
	exception TemplateSyntaxError(msg)
	Template.render(context=None, request=None)
	render_to_string(template_name, context=None, request=None, using=None)
class DjangoTemplates

django.template.backends, 262
django.template.backends.django, 262
django.template.backends.jinja2, 263

django.template.loader, 260
django.template.response, 1298
>>> dir(django.template.response)
['BackendTemplate', 'ContentNotRenderedError', 'Context', 'HttpResponse', 'RemovedInDjango110Warning', 'RequestContext', 'SimpleTemplateResponse', 'Template', 'TemplateResponse', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_current_app_undefined', 'get_template', 'select_template', 'six', 'warnings']
class SimpleTemplateResponse

	Attribute:
	SimpleTemplateResponse.template_name
	SimpleTemplateResponse.context_data
	SimpleTemplateResponse.rendered_content
	SimpleTemplateResponse.is_rendered

	Method:
	SimpleTemplateResponse.__init__(template, context=None, content_type=None, status=None, charset=None, using=None)
	SimpleTemplateResponse.resolve_context(context)
	SimpleTemplateResponse.resolve_template(template)
	SimpleTemplateResponse.add_post_render_callback()
	SimpleTemplateResponse.render()

class TemplateResponse

	Methods:
	TemplateResponse.__init__(request, template, context=None, content_type=None, status=None, charset=None, using=None)


django.test, 309
django.test.signals, 1234
	django.test.signals.setting_changed
	django.test.signals.template_rendered

django.test.utils, 345
	Method:
	setup_test_environment()
	teardown_test_environment()

django.db.connection.creation
	create_test_db(verbosity=1, autoclobber=False, serialize=True, keepdb=False)
	destroy_test_db(old_database_name, verbosity=1, keepdb=False)

uU

django.urls, 1308

reverse(viewname, urlconf=None, args=None, kwargs=None, current_app=None)
reverse_lazy(viewname, urlconf=None, args=None, kwargs=None, current_app=None)
resolve(path, urlconf=None)
class ResolverMatch
get_script_prefix()

django.utils, 1313
	django.utils.cache, 1313
	>>> dir(django.utils.cache)
	['HttpResponse', 'HttpResponseNotModified', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_generate_cache_header_key', '_generate_cache_key', '_i18n_cache_key_suffix', '_not_modified', '_precondition_failed', '_to_tuple', 'add_never_cache_headers', 'caches', 'cc_delim_re', 'force_bytes', 'force_text', 'get_cache_key', 'get_conditional_response', 'get_current_timezone_name', 'get_language', 'get_max_age', 'has_vary_header', 'hashlib', 'http_date', 'iri_to_uri', 'learn_cache_key', 'logger', 'logging', 'parse_etags', 'parse_http_date_safe', 'patch_cache_control', 'patch_response_headers', 'patch_vary_headers', 'quote_etag', 're', 'set_response_etag', 'settings', 'time', 'unicode_literals']

		patch_cache_control(response, **kwargs)
		get_max_age(response)
		patch_response_headers(response, cache_timeout=None)
		add_never_cache_headers(response)
		patch_vary_headers(response, newheaders)
		get_cache_key(request, key_prefix=None)
		learn_cache_key(request, response, cache_timeout=None, key_prefix=None)

	django.utils.dateparse, 1314
	>>> dir(django.utils.dateparse)
	['__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'date_re', 'datetime', 'datetime_re', 'get_fixed_timezone', 'iso8601_duration_re', 'parse_date', 'parse_datetime', 'parse_duration', 'parse_time', 're', 'six', 'standard_duration_re', 'time_re', 'utc']

		parse_date(value)
		parse_time(value)
		parse_datetime(value)
		parse_duration(value)

	django.utils.decorators, 1315
	>>> dir(django.utils.decorators)
	['ContextDecorator', 'WRAPPER_ASSIGNMENTS', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'available_attrs', 'classonlymethod', 'classproperty', 'decorator_from_middleware', 'decorator_from_middleware_with_args', 'make_middleware_decorator', 'method_decorator', 'six', 'update_wrapper', 'wraps']

	method_decorator(decorator, name=’‘)
	decorator_from_middleware(middleware_class)
	decorator_from_middleware_with_args(middleware_class)

	django.utils.encoding, 1315
	>>> dir(django.utils.encoding)
	['DEFAULT_LOCALE_ENCODING', 'Decimal', 'DjangoUnicodeDecodeError', 'Promise', '_PROTECTED_TYPES', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'codecs', 'datetime', 'escape_uri_path', 'filepath_to_uri', 'force_bytes', 'force_str', 'force_text', 'get_system_encoding', 'iri_to_uri', 'is_protected_type', 'locale', 'python_2_unicode_compatible', 'quote', 'repercent_broken_unicode', 'six', 'smart_bytes', 'smart_str', 'smart_text', 'unicode_literals', 'unquote', 'unquote_to_bytes', 'uri_to_iri']

		python_2_unicode_compatible()
		smart_text(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		smart_unicode(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		is_protected_type(obj)
		force_text(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		force_unicode(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		smart_bytes(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		force_bytes(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		smart_str(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		force_str(s, encoding=’utf-8’, strings_only=False, errors=’strict’)
		iri_to_uri(iri)
		uri_to_iri(uri)
		filepath_to_uri(path)
		escape_uri_path(path)

	django.utils.feedgenerator, 1317
		get_tag_uri(url, date)

	SyndicationFeed
	class SyndicationFeed
		__init__(title, link, description, language=None, author_email=None, author_name=None, author_link=None, subtitle=None, categories=None, feed_url=None,feed_copyright=None,feed_guid=None, ttl=None, **kwargs)	
		add_item(title, link, description, author_email=None, author_name=None, author_link=None, pubdate=None, comments=None, unique_id=None, enclosure=None, categories=(),item_copyright=None, ttl=None, updateddate=None, enclosures=None, **kwargs)
		num_items()
		root_attributes()
		add_root_elements(handler)
		item_attributes(item)
		add_item_elements(handler, item)
		write(outfile, encoding)
		writeString(encoding)
		latest_post_date()

	Enclosure
	class Enclosure
	RssFeed
	class RssFeed(SyndicationFeed)
	Rss201rev2Feed
	class Rss201rev2Feed(RssFeed)
	RssUserland091Feed
	class RssUserland091Feed(RssFeed)
	Atom1Feed
	class Atom1Feed(SyndicationFeed)


	django.utils.functional, 1318
	>>> dir(django.utils.functional)
	['LazyObject', 'Promise', 'SimpleLazyObject', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_lazy_proxy_unpickle', 'allow_lazy', 'cached_property', 'copy', 'curry', 'empty', 'lazy', 'lazy_property', 'new_method_proxy', 'operator', 'partition', 'six', 'total_ordering', 'unpickle_lazyobject', 'wraps']
	class cached_property(object, name)
		allow_lazy(func, *resultclasses)
		keep_lazy(func, *resultclasses)
		keep_lazy_text(func)

	django.utils.html, 1321
	>>> dir(django.utils.html)
	['DOTS', 'HTMLParseError', 'HTMLParser', 'MLStripper', 'RFC3986_GENDELIMS', 'RFC3986_SUBDELIMS', 'RemovedInDjango110Warning', 'SafeData', 'SafeText', 'TRAILING_PUNCTUATION', 'WRAPPING_PUNCTUATION', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', '_js_escapes', '_strip_once', 'allow_lazy', 'avoid_wrapping', 'conditional_escape', 'escape', 'escapejs', 'force_str', 'force_text', 'format_html', 'format_html_join', 'hard_coded_bullets_re', 'html_gunk_re', 'html_safe', 'linebreaks', 'link_target_attribute_re', 'mark_safe', 'normalize_newlines', 'parse_qsl', 'quote', 're', 'remove_tags', 'simple_email_re', 'simple_url_2_re', 'simple_url_re', 'six', 'smart_urlquote', 'strip_entities', 'strip_spaces_between_tags', 'strip_tags', 'trailing_empty_content_re', 'unencoded_ampersands_re', 'unicode_literals', 'unquote', 'urlencode', 'urlize', 'urlsplit', 'urlunsplit', 'warnings', 'word_split_re']
	escape(text)
	conditional_escape(text)
	format_html(format_string, *args, **kwargs)
	format_html_join(sep, format_string, args_generator)
	strip_tags(value)
	html_safe()

	django.utils.http, 1322
	>>> dir(django.utils.http)
	['ASCTIME_DATE', 'BinasciiError', 'ETAG_MATCH', 'MONTHS', 'MultiValueDict', 'PROTOCOL_TO_PORT', 'RFC1123_DATE', 'RFC3986_GENDELIMS', 'RFC3986_SUBDELIMS', 'RFC850_DATE', '__D', '__D2', '__M', '__T', '__Y', '__Y2', '__builtins__', '__cached__', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'allow_lazy', 'base36_to_int', 'base64', 'calendar', 'cookie_date', 'datetime', 'force_bytes', 'force_str', 'force_text', 'formatdate', 'http_date', 'int_to_base36', 'is_safe_url', 'is_same_domain', 'original_urlencode', 'parse_etags', 'parse_http_date', 'parse_http_date_safe', 'quote', 'quote_etag', 'quote_plus', 're', 'six', 'sys', 'unicode_literals', 'unicodedata', 'unquote', 'unquote_plus', 'urlencode', 'urlparse', 'urlquote', 'urlquote_plus', 'urlsafe_base64_decode', 'urlsafe_base64_encode', 'urlunquote', 'urlunquote_plus']
		urlquote(url, safe=’/’)
		urlquote_plus(url, safe=’‘)
		urlencode(query, doseq=0)
		cookie_date(epoch_seconds=None)
		http_date(epoch_seconds=None)
		base36_to_int(s)
		int_to_base36(i)
		urlsafe_base64_encode(s)
		urlsafe_base64_decode(s)


	django.utils.log, 469