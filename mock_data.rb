def mock_data()
    count = 1
    mock_data = {
        title: 'Example Page',
        navItems: [['Item 1', 'Item title 2a', 'Item 2b'],'Item 2', 'Item 3'],
        heroText: 'Welcome to my example page',
        subHeroText: 'This is our new assessment',
        mainCardTitle: 'These are cards',
        mainCardText: 'These cards are cool & tell you things about animals! Did you know a bird can run up to 65mph? And a cat can jump 26 feet in the air to catch prey?',
        mainCardText2: 'Animals are so cool.',
        mainCardLink: 'Check out more animal facts',
        mainLink: 'https://www.thefactsite.com/300-random-animal-facts/',
        mainCardText3: 'There are so many facts to learn.',
        animals: [ 'Birds', 'Cats' ],
        whtCardInfo: [['cat.png', count, 'Cats use their whiskers to determine space between objects in the dark.', 'https://coleandmarmalade.com/2018/12/31/25-interesting-facts-about-cats-you-may-not-have-known/'], ['birds.png', count + 1,  'Some birds have membranes that cover their eyes like goggles, enabling them to see while traveling at high speeds.', 'https://www.mspca.org/pet_resources/interesting-facts-about-birds/'], ['cat.png', count + 2, "The cheetah is the only cat that can't retract its claws.", 'https://coleandmarmalade.com/2018/12/31/25-interesting-facts-about-cats-you-may-not-have-known/'], ['birds.png', count + 3, 'Peregrine falcons can fly up to and sometimes surpassing 200mph as they hunt prey.', 'https://www.mspca.org/pet_resources/interesting-facts-about-birds/']],
        constTitle: 'Here is some constrained content',
        constCont: ['Where the metal hits the meat player-coach but upsell so please use "solutionise" instead of solution ideas! :). Turn the crank what are the expectations and collaboration through advanced technology yet we need to dialog around your choice of work attire are there any leftovers in the kitchen? those options are already baked in with this model, yet clear blue water.', "Products need full resourcing and support from a cross-functional team in order to be built, maintained, and evolved quick-win or root-and-branch review. We need to get all stakeholders up to speed and in the right place nobody's fault it could have been managed better drink from the firehose we need to make the new version clean and sexy crisp ppt.", "Net net mobile friendly. Synergize productive mindfulness bench mark, loop back. Quick win synergize productive mindfulness nor hit the ground running yet when does this sunset?"],
        thingTitle: "List of things",
        thingCont: ["Thing 1", "Another thing", "THE thing", "Thingamabob", "Thingles"],
        duckTitle: "Have you heard",
        duckCont: ["There was a duck at a store.", "He ate for free. I should have ordered him more expensive food!", "The lesson here is DUCKS EAT FOR FREE at that restaurant."],
        pictureTitle: "Picture of some things",
        thingImg: "things.jpg",
        thingsCont: "These guys are pretty coo’. Thing one and thing 2. You'll like what they do. Such fun from so few!",
        companyName: "Example Company Name"

    }
end

def remove_last_space(mystring)
    new_arr = []
    temp_string = mystring.scan(/.{1,11}/)
    temp_string.each do |st|
        if st[-1] == " "
            st[-1] = ""
        end
        new_arr << st
    end
    new_arr
end

def split_on_space(mystring)
end


# remove_last_space('Welcome to my example page')