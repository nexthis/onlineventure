import React from "react";
import { Container, Grid, Card, CardContent, Typography, CardActions, Button } from "@material-ui/core"
import {Link} from 'react-router-dom'
import { makeStyles } from '@material-ui/core/styles';

import { dateFormat } from 'utils/data'
import { useApi } from 'hooks/useApi'
import { getUserArticles } from 'api/article'

import { useParams } from 'react-router-dom'

const useStyles = makeStyles((theme) => ({
    top: {
        marginTop: theme.spacing(3)
    },
    card: {
        height: '100%',
    },
}));

const ShowUser = () => {
    const { name } = useParams();
    console.log(name);
    
    const classes = useStyles();
    const [articlesApi] = useApi<typeof getUserArticles>(getUserArticles, name)

    return (
        <Container>
            <Typography className={classes.top} align={"center"} variant="h5" component="h2">Artykuły użytkownika {name}</Typography>
            <Grid className={classes.top} container spacing={3}>

                {articlesApi?.map((item, index) =>
                    <Grid key={index} item md={4} xs={12}>
                        <Card className={classes.card}>
                            <CardContent>
                                <Typography variant="h5" component="h2">
                                    {item.title}
                                </Typography>
                                <Typography color="textSecondary">
                                    Autorzy:  {item.author.map(item => item.nickname).join(', ')}
                                </Typography>
                                <Typography variant="body2" component="p">
                                    {item.text.substring(0, 50)}
                                </Typography>
                                <Typography variant="body2" component="p">
                                    Utworzono: {dateFormat(item.created_at)}
                                </Typography>
                            </CardContent>
                            <CardActions>
                                <Button component={Link} to={`/article/${item.id}`} size="small">Zobacz więcej</Button>
                            </CardActions>
                        </Card>
                    </Grid>
                )}

            </Grid>
        </Container>
    )
}

export default ShowUser;