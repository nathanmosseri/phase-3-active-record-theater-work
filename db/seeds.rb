Role.destroy_all
Audition.destroy_all

5.times do 
    Role.create(
        character_name: Faker::TvShows::Community.characters
    )
end

12.times do 
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Nation.capital_city,
        phone: Faker::PhoneNumber.cell_phone,
        hired: Faker::Boolean.boolean,
        role_id: Role.all.sample.id
    )
end