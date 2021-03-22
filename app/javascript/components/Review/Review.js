import React from 'react'
import Stars from '../common/Stars'

const Review = props => {
  return (
    <div className="border-t-2 flex flex-col justify-between p-2">
      <div className="flex">
        <div className="w-1/12 grid place-items-center">
          <div className="rounded-full bg-red-500 w-8 h-8"/>
        </div>
        <div className="text-xl font-thin w-11/12">
          User
        </div>
      </div>
      <div className="flex items-center">
        <div className="text-xs text-center font-thin w-1/12">
          3d
        </div>
        <Stars avg_score={props.review.attributes.avg_score} className="w-11/12" />
      </div>
      <div className="flex">
        <div className="w-1/12"/>
        <div className="w-11/12">{props.review.attributes.description}</div>
      </div>
    </div>
  )
}

export default Review