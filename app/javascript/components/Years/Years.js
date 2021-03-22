import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'
import Subjects from '../Subjects/Subjects'

const Years = (props) => {
  const [loading, setLoading] = useState(true);
  const [year, setYear] = useState(props.match.params.year_id || 1);
  const [years, setYears] = useState([])
  

  useEffect(() => {
    let unmounted = false;
    axios.get('/api/v1/years')
    .then( resp => {
      if (!unmounted ) {
        setYears(resp.data.data)
        setLoading(false)
      }
    })
    .catch( resp => console.log(resp) )
    return () => {
      unmounted = true;
    };
  }, [years.length])
  
  

  useEffect(() => {
    // change the subjects displayed
  }, [year])


  return (
    <div className="flex flex-col h-full w-full items-center">
      <div className="h-16 w-full bg-green-100 flex justify-center">
        <div className="w-4/5 items-center flex">
          <h3 className="font-thin text-xl mr-2">Año</h3>
          <select
            className="rounded border border-gray-500 bg-green-100 p-2 focus:rounded-xl focus:outline-none focus:ring-1 focus:ring-green-200 focus:border-transparent"
            disabled={loading}
            value={year}
            onChange={e => setYear(e.currentTarget.value)}
          >
            {years.map((y) => (
              <option key={y.id} value={y.id}>
                {y.attributes.name}
              </option>
            ))}
          </select>
        </div>
      </div>
      <div className="w-4/5 flex items-center justify-center">
          <Subjects year={year}/>
      </div>
    </div>
  )
}

export default Years