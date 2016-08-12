voip_services = {
	teamspeak_3: {
		server_names: {
			Phoenix_Rising: {
				channel_names: [
					'Apathy Central',
					'Final Fantasy',
					'Overwatch'
				],
				people_in_server: 5,
				max_population: 25
			}
		}
	},

	raidcall: {
		server_names: {
			Trinity: {
				channel_names: [
					'Star Trek Online',
					'Matrix Online'
				],
				people_in_server: 25,
				max_population: 100
			},
			
			Neo: {
				channel_names: [
					'Star Wars Galaxies',
					'Matrix Online'
				],
				people_in_server: 2,
				max_population: 100
			}
		}
	},

	skype: {
		people_on_call: [
			'Dave',
			'Jenny',
			'Bart',
			'Christy',
			'Tyra',
			'Hank',
			'Tasha',
			'Sam',
			'Jerome',
			'Lee'
		]
	},
	
	ventrillo: {
		server_names: {
			Method_Gaming: {
				channel_names: [
					'World of Warcraft'
				],
				people_in_server: 78,
				max_population: 250
			}
		}
	},

	mumble: {
		server_names: {
			Goon_Squad: {
				channel_names: [
					'World of Warcraft',
					'Descent',
					'Camping the Stairs',
					'Destiny'
				]
			}
		}
	},

	discord: {
		server_names: { 
			Goonz: {
				channel_names: [
					'Blade and Soul',
					'Overwatch',
					'Diablo 3',
					'Black Desert',
					'Age of Conan'
				]
			},

			Method_Gaming: {
				channel_names: [
					'World of Warcraft',
					'Counter-Strike',
					'Overwatch',
					'Heros of the Storm'
				]
			}
		}
	}
}

p voip_services[:teamspeak_3][:server_names][:Phoenix_Rising][:channel_names][0]

voip_services[:teamspeak_3][:server_names][:Phoenix_Rising][:channel_names] << "Oh Hey Der"

p voip_services[:teamspeak_3][:server_names][:Phoenix_Rising][:channel_names]

p voip_services[:skype][:people_on_call][3]

voip_services[:skype][:people_on_call].delete_if { |person| person != 'Bart' }

p voip_services[:skype][:people_on_call]

p voip_services

#everyone hates skype and raidcall

voip_services.keep_if { |service, server| service.to_s != "skype"}

p voip_services

voip_services.delete_if { |service, server| service.to_s == "raidcall" }

p voip_services

