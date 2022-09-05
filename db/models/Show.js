const mongoose = require("../connection");

const ShowSchema = new mongoose.Schema(
  {
    title: String,
    type: Number,
    genres:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Genre"
      }],
    tags:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Tag"
      }],
    summary: String,
    runtime: Number,
    release_date: Date,
    netflix_release_date: Date,
    languages:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Language"
      }],
    trailer_link: String,
    imdb_link: String,
    netflix_link: String,
    imdb_votes: Number,
    image: String,
    poster: String,
    imdb_score: Number,
    rotten_tomatoes_score: Number,
    nominations_received: Number,
    awards_received: Number,
    actors:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Person"
      }],
    directors:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Person"
      }],
    writers:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Person"
      }],
    availability:
      [{
        type: mongoose.Schema.Types.ObjectId,
        ref: "Country"
      }],
  }
);

module.exports = mongoose.model("Show", ShowSchema);