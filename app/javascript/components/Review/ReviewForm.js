import React, { useState, useEffect } from 'react'
import axios from 'axios'
import ReactStars from "../common/react-stars";
import Modal from '../common/Modal'

const ReviewForm = (props) => {
  const [isOpen, setIsOpen] = useState(false);
  const [avgScore, setAvgScore] = useState(0)
  const [scores, setScores] = useState([0,0,0,0])
  const [title, setTitle] = useState('')
  const [description, setDescription] = useState('')
  const scoringSubjects = ['Clases Teoricas','Clases Practicas','Utilidad Practica','Comunicacion Profesores']

  const ratingChanged = (position, score) => {
    let updatedScore = [...scores]
    updatedScore[position] = score
    setScores(updatedScore)
  }

  useEffect(() => {
    setAvgScore(scores.reduce(( a,b ) => a + b, 0) / 4 )
  }, [JSON.stringify(scores)])

  const resetInputs = () => {
    setScores([0,0,0,0])
  }

  const handleSubmit = async () => {
    if (title && description){
      const csrfToken = document.querySelector('[name=csrf-token]').content
      axios.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken

      const subject_id = props.subject.id
      const review = {
        description: description,
        title: title,
        score1: scores[0],
        score2: scores[1],
        score3: scores[2],
        score4: scores[3]
      }
      try {
        await axios.post('/api/v1/reviews', {review, subject_id})
        props.updateReviews()
      }catch(e) {
        console.log(e.message)
      }
      setIsOpen(false)
    }
  }

  const body = <div className='p-10 flex flex-col'>
      <input 
        className="text-2xl p-2 w-full outline-none focus:bg-gray-100 rounded-lg font-thin placeholder-opacity-50" 
        type="text" 
        placeholder="Resume tu review en una frase"
        onChange={(e) => setTitle(e.target.value)}
      />
      <div className="flex flex-col md:flex-row mt-4 p-2">
        <div className="w-full md:w-2/3 md:pr-4 font-thin">
          {scoringSubjects.map((tema,index) => {
            return (
              <div key={tema} className="flex justify-between items-center">
                <span>{tema}</span>
                <ReactStars
                  count={5}
                  classNames={'outline-none focus:otuline-none'}
                  onChange={(newRating) => ratingChanged(index,newRating)}
                  size={24}
                  activeColor="#ffd700"
                />
              </div>
            )
          })}
        </div>
        <div className="w-full md:w-1/3">
          <div className="border border-gray-300 rounded-xl w-full h-full p-2 flex flex-col justify-around items-center">
            <span>Puntaje Total</span>
            <div className="text-3xl">
              {parseFloat(avgScore)}
            </div>
            <ReactStars
              count={5}
              value={avgScore}
              edit={false}
              isHalf={true}
              size={24}
              activeColor="#ffd700"
            />
          </div>
        </div>
      </div>
      <textarea 
        rows="7" 
        className="p-4 outline-none focus:bg-gray-100 rounded-lg w-full mt-4 font-mono"
        placeholder={`Escribe una descripción que explique el motivo de los puntajes otorgados a esta materia en particular.
  Recordamos que es requisito ser respetuoso sin importar el caso.`}
        onChange={(e) => setDescription(e.target.value)}
      />
    <div className="grid place-items-end">
      <button
        className="px-4 py-2 bg-green-200 cursor-pointer uppercase rounded-2xl font-thin shadow hover:shadow-xl w-1/6 mt-2 text-center focus:outline-none"
        onClick={handleSubmit}  
      >
        post
      </button>
    </div>
  </div>


  return <Modal 
    buttonStyle="px-4 py-2 bg-green-200 cursor-pointer uppercase rounded-2xl font-thin shadow hover:shadow-xl" 
    buttonText="Escribe un Review"
    body={body}
    isOpen={isOpen}
    setIsOpen={setIsOpen}
    onClose={resetInputs}
  />
}

export default ReviewForm