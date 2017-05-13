# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "testmax@mailinator.com", password: "Password123")

test = Test.create!(user_id: user.id, description: "general test")

question1 = Question.create!(question_text: "Economist:  Every business strives to increase its productivity, for this increases profits for the owners and the likelihood that the business will survive. But not all efforts to increase productivity are beneficial to the business as a whole. Often, attempts to increase productivity decrease the number of employees, which clearly harms the dismissed employees as well as the sense of security of the retained employees.<br /><br />Which one of the following most accurately expresses the main conclusion of the economist's argument?")
question2 = Question.create!(question_text: "All Labrador retrievers bark a great deal. All Saint Bernards bark infrequently. Each of Rosa's dogs is a cross between a Labrador retriever and a Saint Bernard. Therefore, Rosa's dogs are moderate barkers.<br /><br />Which one of the following uses flawed reasoning that most closely resembles the flawed reasoning used in the argument above?")
question3 = Question.create!(question_text: "A century in certain ways is like a life, and as the end of a century approaches, people behave toward that century much as someone who is nearing the end of life does toward that life. So just as people in their last years spend much time looking back on the events of their life, people at a century's end ___________.<br /><br />Which one of the following most logically completes the argument?<br />")
question4 = Question.create!(question_text: "Consumer:  The latest Connorly Report suggests that Ocksenfrey prepackaged meals are virtually devoid of nutritional value. But the <em>Connorly Report</em> is commissioned by Danto Foods, Ocksenfrey's largest corporate rival, and early drafts of the report are submitted for approval to Danto Foods' public relations department. Because of the obvious bias of this report, it is clear that Ocksenfrey's prepackaged meals really are nutritious.<br /><br />The reasoning in the consumer's argument is most vulnerable to criticism on the grounds that the argument<br />")
question5 = Question.create!(question_text: "Scientist  Earth's average annual temperature has increased by about 0.5 degrees Celsius over the last century. This warming is  primarily the result of the buildup of minor gases in the atmosphere, blocking the outward flow of heat from the planet.<br /><br />Which one of the following, if true, would count as evidence against the scientist's explanation of Earth's warming?<br />")
question6 = Question.create!(question_text: "An undergraduate degree is necessary for appointment to the executive board. Further, no one with a felony conviction can be appointed to the board. Thus, Murray, an accountant with both a bachelor's and a master's degree, cannot be accepted for the position of Executive Administrator, since he has a felony conviction.<br /><br />The argument's conclusion follows logically if which one of the following is assumed?<br />")
question7 = Question.create!(question_text: "Ethicist:   The most advanced kind of moral motivation is based solely on abstract principles. This form of motivation is in contrast with calculated self-interest or the desire to adhere to societal norms and conventions.<br /><br />The actions of which one of the following individuals exhibit the most advanced kind of moral motivation, as described by the ethicist?<br />")
question8 = Question.create!(question_text: "Although video game sales have increased steadily over the past 3 years, we can expect a reversal of this trend in the very near future. Historically, over three quarters of video games sold have been purchased by people from 13 to 16 years of age, and the number of people in this age group is expected to decline steadily over the next 10 years.<br /><br />Which one of the following, if true, would most seriously weaken the argument?<br />")

# test_question1 = TestQuestion.create!()

Option.create!(question_id: question1.id, description: "If an action taken to secure the survival of a business fails to enhance the welfare of the business's employees, that action cannot be good for the business as a whole.")
answer1 = Option.create!(question_id: question1.id, description: "Some measures taken by a business to increase productivity fail to be beneficial to the business as a whole.")
Option.create!(question_id: question1.id, description: "Only if the employees of a business are also its owners will the interests of the employees and owners coincide, enabling measures that will be beneficial to the business as a whole.")
Option.create!(question_id: question1.id, description: "There is no business that does not make efforts to increase its productivity.")
Option.create!(question_id: question1.id, description: "Decreasing the number of employees in a business undermines the sense of security of retained employees.")
question1.update(answer_id: answer1.id)

Option.create!(question_id: question2.id, description: "All students who study diligently make good grades. But some students who do not study diligently also make good grades. Jane studies somewhat diligently. Therefore, Jane makes somewhat good grades.")
answer2 = Option.create!(question_id: question2.id, description: "All type A chemicals are extremely toxic to human beings. All type B chemicals are nontoxic to human beings. This household cleaner is a mixture of a type A chemical and a type B chemical. Therefore, this household cleaner is moderately toxic.")
Option.create!(question_id: question2.id, description: "All students at Hanson School live in Green County. All students at Edwards School live in Winn County. Members of the Perry family attend both Hanson and Edwards. Therefore, some members of the Perry family live in Green County and some live in Winn County.")
Option.create!(question_id: question2.id, description: "All transcriptionists know shorthand. All engineers know calculus. Bob has worked both as a transcriptionist and as an engineer. Therefore, Bob knows both shorthand and calculus.")
Option.create!(question_id: question2.id, description: "All of Kenisha's dresses are very well made. All of Connie's dresses are very badly made. Half of the dresses in this closet are very well made, and half of them are very badly made. Therefore, half of the dresses in this closet are Kenisha's and half of them are Connie's.")
question2.update(answer_id: answer2.id)

Option.create!(question_id: question3.id, description: "reminisce about their own lives")
Option.create!(question_id: question3.id, description: "fear that their own lives are about to end")
Option.create!(question_id: question3.id, description: "focus on what the next century will bring")
answer3 = Option.create!(question_id: question3.id, description: "become very interested in the history of the century just ending")
Option.create!(question_id: question3.id, description: "reflect on how certain unfortunate events of the century could have been avoided")
question3.update(answer_id: answer3.id)

answer4 = Option.create!(question_id: question4.id, description: "treats evidence that there is an apparent bias as evidence that the Connorly Report's claims are false")
Option.create!(question_id: question4.id, description: "draws a conclusion based solely on an unrepresentative sample of Ocksenfrey's products")
Option.create!(question_id: question4.id, description: "fails to take into account the possibility that Ocksenfrey has just as much motivation to create! negative publicity for Danto as Danto has to create! negative publicity for Ocksenfrey")
Option.create!(question_id: question4.id, description:"fails to provide evidence that Danto Foods' prepackaged meals are not more nutritious than Ocksenfrey's are")
Option.create!(question_id: question4.id, description: "presumes, without providing justification, that Danto Foods' public  relations department would not approve a draft of a report that was hostile to Danto Foods' products")
question4.update(answer_id: answer4.id)

Option.create!(question_id: question5.id, description: "Only some of the minor gases whose presence in the atmosphere allegedly resulted in the phenomenon described by the scientist were produced by industrial pollution.")
answer5 = Option.create!(question_id: question5.id, description: "Most of the warming occurred before 1940, while most of the buildup of minor gases in the atmosphere occurred after 1940.")
Option.create!(question_id: question5.id, description: "Over the last century, Earth received slightly more solar radiation in certain years than it did in others.")
Option.create!(question_id: question5.id, description: "Volcanic dust and other particles in the atmosphere reflect much of the Sun's radiation back into space before it can reach Earth's surface.")
Option.create!(question_id: question5.id, description: "The accumulation of minor gases in the atmosphere has been greater over the last century than at any other time in Earth's history.")
question5.update(answer_id: answer5.id)

Option.create!(question_id: question6.id, description: "Anyone with a master's degree and without a felony conviction is eligible for appointment to the executive board.")
answer6 = Option.create!(question_id: question6.id,description: "Only candidates eligible for appointment to the executive board can be accepted for the position of Executive Administrator.")
Option.create!(question_id: question6.id,description: "An undergraduate degree is not necessary for acceptance for the position of Executive Administrator.")
Option.create!(question_id: question6.id,description: "If Murray did not have a felony conviction, he would be accepted for the position of Executive Administrator.")
Option.create!(question_id: question6.id,description: "The felony charge on which Murray was convicted is relevant to the duties of the position of Executive Administrator.")
question6.update(answer_id: answer6.id)

Option.create!(question_id: question7.id,description: "Bobby contributed money to a local charity during a charity drive at work because he worried that not doing so would make him look stingy.")
Option.create!(question_id: question7.id,description: "Wes contributed money to a local charity during a charity drive at work because he believed that doing so would improve his employer's opinion of him.")
Option.create!(question_id: question7.id,description: "Donna's employers engaged in an illegal but profitable practice that caused serious damage to the environment. Donna did not report this practice to the authorities, out of fear that her employers would retaliate against her.")
answer7 = Option.create!(question_id: question7.id,description: "Jadine's employers engaged in an illegal but profitable practice that caused serious damage to the environment. Jadine reported this practice to the authorities out of a belief that protecting the environment is always more important than monetary profit.")
Option.create!(question_id: question7.id,description: "Leigh's employers engaged in an illegal but profitable practice that caused serious damage to the environment. Leigh reported this practice to the authorities only because several colleagues had been pressuring her to do so.")
question7.update(answer_id: answer7.id)

Option.create!(question_id: question8.id,description: "Most people 17 years old or older have never purchased a video game.")
Option.create!(question_id: question8.id,description: "Video game rentals have declined over the past 3 years.")
Option.create!(question_id: question8.id,description: "New technology will undoubtedly make entirely new entertainment options available over the next 10 years.")
Option.create!(question_id: question8.id,description: "The number of different types of video games available is unlikely to decrease in the near future.")
answer8 = Option.create!(question_id: question8.id,description: "Most of the people who have purchased video games over the past 3 years are over the age of 16.")
question8.update(answer_id: answer8.id)

