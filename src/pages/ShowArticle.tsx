import React from "react";
import { Container, Grid, Card, CardContent, Typography,CardActions,Button } from "@material-ui/core"

import {dateFormat} from 'utils/data'
import { useApi } from 'hooks/useApi'
import { getArticle } from 'api/article'

import { useParams } from 'react-router-dom'

const ShowArticle = () => {
    const { id } = useParams();
    const [articleApi] = useApi<typeof getArticle>(getArticle, id)

    return (
        <Container>
            <Grid item md={12} xs={12}>
                <Card style={{marginTop: 40}}>
                    <CardContent>
                        <Typography variant="h5" component="h2">
                            {articleApi?.title}
                        </Typography>
                        <Typography color="textSecondary">
                            Autorzy:  {articleApi?.author.map(articleApi => articleApi?.nickname).join(', ')}
                        </Typography>
                        <Typography variant="body2" component="p">
                            {articleApi?.text}
                        </Typography>
                        <Typography variant="body2" component="p">
                            Utworzono: {dateFormat(articleApi ? articleApi.created_at : '')}
                        </Typography>
                    </CardContent>
                </Card>
            </Grid>
        </Container>
    )
}

export default ShowArticle;