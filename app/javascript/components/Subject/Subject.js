import React, { useState, useEffect } from 'react'
import axios from 'axios'
import ReactStars from "../common/react-stars";
import Review from '../Review/Review'
import { Link } from 'react-router-dom'
import ReviewForm from '../Review/ReviewForm'

const PartialScores = (props) => {
  return (
    <div className="w-1/3 border-r-2 pt-4 pr-4 pb-4">
      <div className="flex justify-between w-full mb-2">
        <div className="font-thin">Clases Teoricas</div>
        <ReactStars
          count={5}
          value={props.partial_scores.score4}
          edit={false}
          isHalf={true}
          size={20}
          activeColor="#ffd700"
        />
      </div>
      <div className="flex justify-between w-full mb-2">
        <div className="font-thin">Clases Practicas</div>
        <ReactStars
          count={5}
          value={props.partial_scores.score4}
          edit={false}
          isHalf={true}
          size={20}
          activeColor="#ffd700"
        />
      </div>
      <div className="flex justify-between w-full mb-2">
        <div className="font-thin">Utilidad Practica</div>
        <ReactStars
          count={5}
          value={props.partial_scores.score4}
          edit={false}
          isHalf={true}
          size={20}
          activeColor="#ffd700"
        />
      </div>
      <div className="flex justify-between w-full mb-2">
        <div className="font-thin">Comunicacion Profesores</div>
        <ReactStars
          count={5}
          value={props.partial_scores.score4}
          edit={false}
          isHalf={true}
          size={20}
          activeColor="#ffd700"
        />
      </div>
    </div>
  )
}

const Subject = (props) => {
  const [subject, setSubject] = useState({})
  const [reviews, setReviews] = useState([])
  const [loaded, setLoaded] = useState(false)

  useEffect(() => {
    let unmounted = false;
    axios.get(`/api/v1/subjects/${props.match.params.slug}`)
      .then(resp => {
        if (!unmounted) {
          setSubject(resp.data.data)
          setLoaded(true)
        }
      })
      .catch(resp => console.log(resp))
      fetchReviews()
    return () => {
      unmounted = true;
    };
  }, [props.match.params.slug])

  const fetchReviews = () => {
    axios.get(`/api/v1/subject/${props.match.params.slug}/reviews`)
      .then(rev => {
        setReviews(rev.data.data)
      })
      .catch(err => console.log(err))
  }

  return (loaded) ? (
    <div className="flex flex-col h-full w-full items-center">
      <div className="h-16 w-full bg-green-100 flex justify-center">
        <div className="w-4/5 items-center flex flex justify-between">
          <div className="font-thin flex items-center">
            <div className="shadow hover:shadow-lg p-2 flex items-center mr-2 cursor-pointer">
              <Link to={`/years/${subject.attributes.year_id}`}>{'<'}</Link>
            </div>
            <h2 className="font-lg">
              {subject.attributes.name}
            </h2>
          </div>
          <div className="flex items-center">
            <ReactStars
              count={5}
              value={subject.attributes.avg_score}
              edit={false}
              isHalf={true}
              size={24}
              activeColor="#ffd700"
            />
            <div className="flex flex-row items-center">
              <div className="text-xl mx-1 font-thin">
                {subject.attributes.avg_score}
              </div>
              <div className="text-xs font-thin">
                ({subject.relationships.reviews.data.length} reviews)
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="w-4/5 flex flex-col items-center justify-center">
        <div className="mt-10">
          <h2 className="font-thin text-xl mb-4">Descripcion de la materia:</h2>
          {subject.attributes.description}
        </div>
        <div className="mt-10 w-full">
          <h2 className="font-thin text-xl">Reviews</h2>
          <hr className="border-t"></hr>
          <div className="flex w-full h-40">
            <PartialScores partial_scores={subject.attributes.partial_scores_avg}/>
            <div className="w-2/3 grid place-items-center">
              <ReviewForm subject={subject} updateReviews={fetchReviews}/>
            </div>
          </div>
        </div>
        <div className="mt-10 w-full">
          {reviews.map((review) => (
            <Review review={review} key={review.id}/>
          ))}
        </div>
      </div>
    </div>
  ) : (
      <div>
        loading
      </div>
    )
}

export default Subject