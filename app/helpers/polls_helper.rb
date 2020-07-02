module PollsHelper
  def visualize_votes_for(content)
    content_tag :div, class: 'progress' do
      content_tag :div, class: 'progress-bar',
                  style: "width: #{content.poll.normalized_votes_for(content)}%" do
        "#{content.votes.count}"
      end
    end
  end
end
