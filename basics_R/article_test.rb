require './article'

describe Article  do

	before do
		@article = Article.new
	end

	let(:article){ Article.new}
	let(:filled_in_article) {Article.new(title: "test", body:"this is the body", author:"quincy")}
	let(:first_letter){Article.new(author: 'Quincy')}
	let(:title_html){Article.new(title: 'Howdy')}




it "title should be empty" do
	expect(filled_in_article.title?).to eq(true)

end


it "body should be empty " do
	expect(filled_in_article.body?).to eq(true)
end

it "author name starts with Q" do
	expect(filled_in_article.authors_name_starts_with_q?).to eq(true)
end

it "title should be html" do
	expect(filled_in_article.title_as_html).to eq( "<h1>test</h1>")
end
it "author as html" do
	expect(filled_in_article.author_as_html).to eq("<b>quincy</b>")
end
it "body_as_html" do
	expect(filled_in_article.body_as_html).to eq("<p>this is the body</p>")
end
end
