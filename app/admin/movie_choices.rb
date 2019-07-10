ActiveAdmin.register MovieChoice do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# Maybe use grouped_collection_select? https://www.youtube.com/watch?v=j1zZ4Lgzf9s
# Maybe force first choice created to be the right one?
    permit_params :movie_id, :summary_id

    form title: 'A custom title' do |f|
      inputs 'Details' do
        f.semantic_errors *f.object.errors.keys

        f.input :summary_id, :as => :select, :collection => Summary.includes(:movie).all.order("movies.title").select {
            |summary| MovieChoice.where(:summary_id => summary.id).count < 4
        }

        f.input :movie_id, :as => :select, :collection => Movie.joins(:summaries).group("movies.id").order("movies.title")
       end
      para "Press cancel to return to the list without saving."
      actions
    end
end
