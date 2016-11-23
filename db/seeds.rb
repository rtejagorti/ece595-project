# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Candidates
hillary = Candidate.new
hillary.first_name = "Hillary"
hillary.last_name = "Clinton"
hillary.isEncumbent = false
hillary.biography = "Hillary Diane Rodham Clinton (born October 26, 1947) is an American politician who was the 67th United States Secretary of State from 2009 to 2013, U.S. Senator from New York from 2001 to 2009, and First Lady of the United States from 1993 to 2001. She is the Democratic Party's nominee for President of the United States in the 2016 election."
hillary.email = "mailto:hdr29@hrcoffice.com"
hillary.pol_URL = "http://hillaryclinton.com"
hillary.pol_Aff = "Democrat"
hillary.hasPicture = false
hillary.running_for = "President of the United States"
hillary.office_type = "National"
hillary.save

trump = Candidate.new
trump.first_name = "Donald"
trump.last_name = "Trump"
trump.isEncumbent = false
trump.biography = "Donald John Trump (born June 14, 1946) is an American businessman. In June 2015, Trump announced his candidacy for president as a Republican and quickly emerged as the front-runner for his party's nomination. His rivals suspended their campaigns in May 2016, and in July he was formally nominated at the party convention. Trump was born and raised in New York City and received a bachelor's degree in economics from the Wharton School in 1968. In 1971 he took control of his family's real estate and construction firm, Elizabeth Trump & Son, and renamed it The Trump Organization. He later expanded the business with other products and activities. Trump has built office towers, hotels, casinos, golf courses, and other Trump-branded facilities worldwide. He owned the Miss USA pageants from 1996 to 2015, and has made cameo appearances in films and television series. From 2004 to 2015, Trump hosted and co-produced The Apprentice, a reality television series on NBC. He sought the Reform Party's presidential nomination in 2000, but withdrew before voting began. As of 2016, he was listed by Forbes as the 336th wealthiest person in the world, and 156th in the United States, with a net worth of $4.5 billion."
trump.pol_URL = "http://donaldjtrump.com/"
trump.pol_Aff = "Republican"
trump.hasPicture = false
trump.running_for = "President of the United States"
trump.office_type = "National"
trump.save

grisham = Candidate.new
grisham.first_name = "Michelle"
grisham.last_name = "Grisham"
grisham.isEncumbent = true
grisham.biography = "Michelle Lujan Grisham (born October 24, 1959) is an American lawyer and politician who is the U.S. Representative for New Mexico's 1st congressional district, serving since 2013. She has served in the New Mexico state cabinet, and as Bernalillo County Commissioner."
grisham.email = "https://lujangrisham.house.gov/contact"
grisham.pol_URL = "https://lujangrisham.house.gov/"
trump.pol_Aff = "Democrat"
grisham.hasPicture = false
grisham.running_for = "Congress"
grisham.office_type = "National"
grisham.save

#Hillary Terms
Term.create(position_title: "First Lady of Arkansas", termStart: Date.parse("1979-1-9"), termEnd: Date.parse("1981-1-19"), candidate_id: '1')
Term.create(position_title: "First Lady of Arkansas", termStart: Date.parse("1983-1-11"), termEnd: Date.parse("1992-12-12"), candidate_id: '1')
Term.create(position_title: "First Lady of the United States", termStart: Date.parse("1993-1-20"), termEnd: Date.parse("2001-1-20"), candidate_id: '1')
Term.create(position_title: "United States Senator (NY)", termStart: Date.parse("2001-1-3"), termEnd: Date.parse("2009-1-21"), candidate_id: '1')
Term.create(position_title: "Secretary of State", termStart: Date.parse("2009-1-21"), termEnd: Date.parse("2013-2-1"), candidate_id: '1')

#Trump Terms

#Judge
Judge.create(first_name:"Frank", last_name: "Sedillo", isSitting: true, biography: "Frank A. Sedillo is the judge for Division 5 of the Bernalillo Metropolitan Courts in New Mexico. He was retained in 2014 for a term that expires on December 31, 2018.", email: "whatever@yo.com", precinct_id: "1")
Decision.create(decision_title: "Man v. The World", decision_desc: "Man blames the world for his problems.", decision_position: "Found in favor of the World.", decision_date: Date.parse("2015-02-12"), judge_id: "1")

#Issues
Referenda.create(referenda_title: "Bond C", referenda_desc: "Stuff", referenda_type: "bonds")
Referenda.create(referenda_title: "Bond D", referenda_desc: "Stuff", referenda_type: "issues")

#Questions
Question.create(question_topic: "Federal Minimum Wage", question: "Do you support raising the federal or state minimum wage?", question_desc: "The federal minimum wage for covered nonexempt employees is $7.25 per hour effective July 24, 2009. The federal minimum wage provisions are contained in the Fair Labor Standards Act (FLSA). Many states also have minimum wage laws.") #1
Choice.create(choice: "Yes, raise minimum wage.", question_id: '1')
Choice.create(choice: "No, don't raise minimum wage.", question_id: '1')
QuestionChoice.create(choice_id: "1", question_id: "1", candidate_id: "1", choice_source_URL: "https://www.hillaryclinton.com/feed/middle-class-needs-raise-heres-how-hillary-clinton-plans-do-it/")

Question.create(question_topic: "NAFTA & TPP", question: "Where do you stand on trade agreements?", question_desc: "The goal of the North American Free Trade Agreement (NAFTA) was to eliminate barriers to trade and investment between the U.S., Canada and Mexico. The goal of the Trans-Pacific Partnership (TPP) is to promote economic growth; support the creation and retention of jobs; enhance innovation, productivity and competitiveness; raise living standards; reduce poverty in the signatories' countries; and promote transparency, good governance, and enhanced labor and environmental protections.") #2
Choice.create(choice: "For NAFTA & TPP", question_id: '2')
Choice.create(choice: "Against NAFTA & TPP", question_id: '2')
Choice.create(choice: "For NAFTA, Against TPP", question_id: '2')
Choice.create(choice: "Against NAFTA, For TPP", question_id: '2')
QuestionChoice.create(choice_id: "5", question_id: "2", candidate_id: "1", choice_source_URL: "http://www.pri.org/stories/2016-07-28/hillary-clinton-s-stand-nafta-and-tpp-it-s-complicated-and-evolving")

Question.create(question_topic: "Sam-Sex Marriage", question: "What is your position on same-sex marriage?", question_desc: "Does not define marriage on the basis of gender. Allows the same protections as heterosexual marriages.") #3
Choice.create(choice: "For Same-Sex Marriage", question_id: '3')
Choice.create(choice: "Against Same-Sex Marriage", question_id: '3')

Question.create(question_topic: "Gun Control", question: "What is your position on gun control?", question_desc: "Gun control (or firearms regulation) is the set of laws or policies that regulate the manufacture, sale, transfer, possession, modification, or use of firearms by civilians.") #4
Choice.create(choice: "More gun laws should be enacted.", question_id: '4')
Choice.create(choice: "Less gun laws should be enacted.", question_id: '4')

Question.create(question_topic: "Abortion", question: "What is your position on abortion?", question_desc: "The deliberate termination of a pregnancy.") #5
Choice.create(choice: "Should be legal.", question_id: '5')
Choice.create(choice: "Should be illegal.", question_id: '5')

Question.create(question_topic: "Obamacare", question: "What is your position on Obamacare?", question_desc: "The Patient Protection and Affordable Care Act (PPACA), commonly called the Affordable Care Act (ACA) or Obamacare, is a United States federal statute enacted by President Barack Obama on March 23, 2010.") #6
Choice.create(choice: "Should be kept.", question_id: '6')
Choice.create(choice: "Should be abolished.", question_id: '6')
Choice.create(choice: "Should be kept, but altered.", question_id: '6')

Question.create(question_topic: "Foreign Involvement", question: "Where do you stand on the United States' involvement in foreign affairs?") #7
Choice.create(choice: "Focus on our country, less on foreign affairs.", question_id: '7')
Choice.create(choice: "Aid in issues abroad.", question_id: '7')

Question.create(question_topic: "Immigration", question: "Where do you stand on immigration?", question_desc: "The United States Department of Homeland Security (DHS) has estimated that 11.4 million unauthorized immigrants lived in the United States in January 2012.") #8
Choice.create(choice: "Undocumented immigrants should be deported.", question_id: '8')
Choice.create(choice: "Undocumented immigrants should be given a path to citizenship.", question_id: '8')

Question.create(question_topic: "Fracking", question: "What is your opinion on fracking?", question_desc: "Fracking is the process of injecting liquid at high pressure into subterranean rocks, boreholes, etc., so as to force open existing fissures and extract oil or gas.") #9
Choice.create(choice: "Fracking should be allowed.", question_id: '9')
Choice.create(choice: "Fracking is dangerous, should be halted.", question_id: '9')

Question.create(question_topic: "Taxes", question: "What would you like done in regards to taxes?") #10
Choice.create(choice: "Lower taxes.", question_id: '10')
Choice.create(choice: "Raise taxes.", question_id: '10')

#Precinct test
Zip.create(zip_code: '87131', precinct_id: '1')
Precinct.create(precinct_num: '1', precinct_type: "National", city_id: '1')
City.create(city_name: "Albuquerque", county_id: '1')
County.create(county_name: "Bernalilo", state_id: '1')
State.create(state_name: "New Mexico", country_id: '1')
Country.create(country_name: "United States of America")
