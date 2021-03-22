import React, { useState, useEffect }  from 'react'
import axios from 'axios'
import Subject from './Subject'
const images = importAll(require.context('images', false, /\.(png|jpe?g|svg)$/))

function importAll(r) {
  let images = {};
  r.keys().map((item, index) => { images[item.replace('./', '')] = r(item); });
  return images;
}


const Subjects = (props) => {
  const [subjects, setSubjects] = useState([])

  useEffect(() => {
    let unmounted = false;
    axios.get(`/api/v1/year/${props.year}/subjects`)
    .then( resp => {
      if (!unmounted ) {
        setSubjects(resp.data.data)
      }
    })
    .catch( resp => console.log(resp) )
    return () => {
      unmounted = true;
    };
  }, [props.year])

  const parentGrid = {
    display: 'grid',
    gridTemplateColumns: 'repeat(auto-fit,minmax(200px,1fr))',
    gridGap: '1rem'
  }

 

  return (
    <div style={parentGrid} className="w-2/3 mt-10">
      {subjects.map(subject => {
        return <Subject key={subject.id} img={images[subject.attributes.image_url]} data={subject}/>
      })}
    </div>
  )
}

export default Subjects