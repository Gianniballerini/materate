import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Year from './Year/Year'
import Years from './Years/Years'
// import Subjects from './Subjects/Subjects'
import Subject from './Subject/Subject'
import mate from 'images/mate.png'


const App = () => {
  return (
    <div className="h-full w-full">
      <div className="w-full h-14 shadow-lg flex justify-center">
        <div className="w-4/5 flex items-center justify-between">
          <div className="flex items-center h-full">
            <img src={mate} alt="" className="h-full"/>
            <div className="capitalize font-thin text-2xl">
              Materate
            </div>
          </div>
          <div className="font-thin">
            User
          </div>
        </div>
      </div>
      <div className="w-full flex justify-center">
        <Switch>
          {/* <Route exact path="/subjects" component={Subjects}/> */}
          <Route exact path="/years" component={Years}/>
          <Route exact path="/years/:year_id" component={Years}/>
          <Route exact path="/years/:name" component={Year}/>
          <Route exact path="/subject/:slug" component={Subject}/>
        </Switch>  
      </div>
    </div>
  )
}

export default App