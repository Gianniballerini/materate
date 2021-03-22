import React from 'react'
import { Link } from 'react-router-dom'
import ReactStars from "../common/react-stars";

const Subject = (props) => {
  return (
    <Link to={`/subject/${props.data.attributes.slug}`} key={props.data.id} className="rounded-lg shadow-md min-h-56 hover:shadow-lg cursor-pointer flex flex-col p-4 justify-between items-center">  
      <div className="text-center mb-2 font-thin text-lg">{props.data.attributes.name}</div>
      <img className="w-28 h-28" src={props.img}/>
      <ReactStars
        count={5}
        value={props.data.attributes.avg_score}
        edit={false}
        isHalf={true}
        size={20}
        activeColor="#ffd700"
      />
    </Link>
  )
}

export default Subject