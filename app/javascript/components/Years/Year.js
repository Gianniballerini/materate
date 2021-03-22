import React from 'react'
import { Link } from 'react-router-dom'
import styled from 'styled-components'

const Card = styled.div`
  border: 1px solid #efefef;
  background: #fff;
`
const YearName = styled.div`
  padding: 20px 0 10px 0;
`
const LinkWrapper = styled.div`
  margin: 30px 0 20px 0;
  height: 50px;

  a {
    color: #fff;
    background: #000;
    border-radius: 4px;
    padding: 10px 50px;
    border: 1px solid #000;
    width: 100%;
    text-decoration: none;
  }
`

const Year = (props) => {
  return (
    <Card>
      <YearName>
        {props.attributes.name}
      </YearName>
      <LinkWrapper>
        <Link to={`/years/${props.attributes.name}`}>View Year</Link>
      </LinkWrapper>
    </Card>
  )
}

export default Year