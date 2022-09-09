/* === Helper to format headers/fields === */

let headersString = "show_id,show_title,show_type,show_genres,show_tags,show_languages,show_country_availability,show_directors,show_writers,show_actors,show_production_house,show_summary,show_view_rating,show_release_date,show_netflix_release_date,show_hidden_gem_score,show_imdb_score,show_rotten_tomatoes_score,show_metacritic_score,show_awards_received,show_nominations_received,show_boxoffice,show_trailer_link,show_netflix_link,show_imdb_link,show_image,show_poster";

let headers = headersString.split(",");

for (let header of headers)
{
  header = header.trim();
}

module.exports = { headers };