module ApplicationHelper
		def nav_items
	  	[
	  		{
			 displaytext: 'Home',
			 controllername: 'home',
			 linkurl: root_path
			},
			{
			 displaytext: 'Companies',
			 controllername: 'companies',
			 linkurl: companies_path
			},
			{
			 displaytext: 'Projects',
			 controllername: 'projects',
			 linkurl: projects_path
			},
			{
			 displaytext: 'Reports',
			 controllername: 'Reports',
			 linkurl: reports_path
			}
		]
	end

	def display_nav_item(displaytext, controllername, linkurl)
		raw("<li#{controller_name == controllername ? ' class="active"' : ''}>#{link_to displaytext, linkurl}</li>")
	end
end
