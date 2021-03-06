# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all
SkillType.delete_all
Skill.delete_all

Question.create!(q: 'What is it about this job that interests you the most?')
Question.create!(q: 'What is the biggest risk that you have taken?')
Question.create!(q: 'What is a weakness of yours?')
Question.create!(q: 'Give an example of how you solved a work problem.')
Question.create!(q: 'What motivates you?')
Question.create!(q: 'What is an important accomplishment you have made?')
Question.create!(q: 'What qualities do you have that would benefit our company?')
Question.create!(q: 'Name three adjectives to describe yourself.')
Question.create!(q: 'Tell me what you liked or disliked about your past bosses.')
Question.create!(q: 'Describe how you would solve a personal problem with another employee.')
Question.create!(q: 'How do you handle frustration on the job?')
Question.create!(q: 'What are you doing now to improve yourself?')
Question.create!(q: 'Name a situation in which you failed and how you went about correcting it.')
Question.create!(q: 'What is your major strength?')
Question.create!(q: 'What challenges or developments do you see for this industry?')
Question.create!(q: 'Tell me about a goal you did not meet. Why?')
Question.create!(q: 'What is the latest book you read?')

key         = SkillType.create!(name: 'Key')
data        = SkillType.create!(name: 'Working With Data')
people      = SkillType.create!(name: 'Working With People')
words       = SkillType.create!(name: 'Working With Words/Ideas')
creative    = SkillType.create!(name: 'Creative/Artist')
personality = SkillType.create!(name: 'Personality-Related Skills')

key.skills.create!(description: 'Selling')
key.skills.create!(description: 'Manage Money')
key.skills.create!(description: 'Understand / Control Budgets')
key.skills.create!(description: 'Manage People')
key.skills.create!(description: 'Supervise Others')
key.skills.create!(description: 'Meet Deadlines')
key.skills.create!(description: 'Meet The Public')
key.skills.create!(description: 'Speak In Public')
key.skills.create!(description: 'Negotiate')
key.skills.create!(description: 'Organize / Manage Projects')
key.skills.create!(description: 'Solve Problems')
key.skills.create!(description: 'Accept Responsibility')

data.skills.create!(description: 'Analyze Data')
data.skills.create!(description: 'Audit Records')
data.skills.create!(description: 'Budget / Numbers')
data.skills.create!(description: 'Check For Accuracy')
data.skills.create!(description: 'Classify Things')
data.skills.create!(description: 'Computer Skills')
data.skills.create!(description: 'Evaluate')
data.skills.create!(description: 'Investigate')
data.skills.create!(description: 'Keep Financial Records')
data.skills.create!(description: 'Locate Answers / Information')
data.skills.create!(description: 'Research')
data.skills.create!(description: 'Spreadsheets')
data.skills.create!(description: 'Working With Databases')

people.skills.create!(description: 'Administer')
people.skills.create!(description: 'Care For')
people.skills.create!(description: 'Confront Others')
people.skills.create!(description: 'Counsel People')
people.skills.create!(description: 'Demonstrate')
people.skills.create!(description: 'Teach / Train')
people.skills.create!(description: 'Help Others')
people.skills.create!(description: 'Insight')
people.skills.create!(description: 'Interview People')
people.skills.create!(description: 'Kind')
people.skills.create!(description: 'Listen')
people.skills.create!(description: 'Mentor')
people.skills.create!(description: 'Outgoing')
people.skills.create!(description: 'Persuade')
people.skills.create!(description: 'Pleasant')
people.skills.create!(description: 'Sensitive')
people.skills.create!(description: 'Sociable')
people.skills.create!(description: 'Tactful')
people.skills.create!(description: 'Tolerant')
people.skills.create!(description: 'Tough')
people.skills.create!(description: 'Trusting')
people.skills.create!(description: 'Understanding')

words.skills.create!(description: 'Articulate')
words.skills.create!(description: 'Verbal Communication Skills')
words.skills.create!(description: 'Written Communication Skills')
words.skills.create!(description: 'Edit')
words.skills.create!(description: 'Create New Ideas')
words.skills.create!(description: 'Ingenious')
words.skills.create!(description: 'Inventive')
words.skills.create!(description: 'Remember Information')

creative.skills.create!(description: 'Artistic')
creative.skills.create!(description: 'Draw / Paint / Photograph')
creative.skills.create!(description: 'Expressive')
creative.skills.create!(description: 'Present Artistic Ideas')
creative.skills.create!(description: 'Dance, Body Movement')

personality.skills.create!(description: 'Ambitious')
personality.skills.create!(description: 'Patient')
personality.skills.create!(description: 'Assertive')
personality.skills.create!(description: 'Learn Quickly')
personality.skills.create!(description: 'Flexible')
personality.skills.create!(description: 'Mature')
personality.skills.create!(description: 'Dependable / Reliable')
personality.skills.create!(description: 'Thoroughly Complete Assignments')
personality.skills.create!(description: 'Sincere')
personality.skills.create!(description: 'Empathetic')
personality.skills.create!(description: 'Good Sense Of Humor')
personality.skills.create!(description: 'Resourceful')
personality.skills.create!(description: 'Highly Motivated')
personality.skills.create!(description: 'Intelligent')
personality.skills.create!(description: 'Creative')
personality.skills.create!(description: 'Leadership / Comfortable Taking Charge')
personality.skills.create!(description: 'Enthusiastic')
personality.skills.create!(description: 'Persistent')
personality.skills.create!(description: 'Self-Starter')
personality.skills.create!(description: 'Results-Orientated')
personality.skills.create!(description: 'Ask Questions Easily')
personality.skills.create!(description: 'Able To Assess And Critique People And Projects')
personality.skills.create!(description: 'Work Best Independently')
personality.skills.create!(description: 'Logical Thinker / Logical Analysis')
personality.skills.create!(description: 'Multi-Task With Ease')
personality.skills.create!(description: 'Strategic Thinker')
personality.skills.create!(description: 'Sensitive And Diplomatic')
personality.skills.create!(description: 'Adaptable / Spontaneous')
personality.skills.create!(description: 'Organized')
personality.skills.create!(description: 'Efficient')
personality.skills.create!(description: 'Best Work Done In Teams')
