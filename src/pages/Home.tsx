import React from "react";
import { Container, Card, CardContent, CardActions, Grid, Typography, Button } from "@material-ui/core"
import {Link} from 'react-router-dom'
import { makeStyles } from '@material-ui/core/styles';

import { useApi } from 'hooks/useApi'
import {dateFormat} from 'utils/data'
import { getArticles, getTopArticles } from 'api/article'


const useStyles = makeStyles((theme) => ({
    top: {
        marginTop: theme.spacing(3)
    },
    card: {
        height: '100%',
    },
}));

const Home = () => {
    const classes = useStyles();
    const [topArticlesApi] = useApi<typeof getTopArticles>(getTopArticles)
    const [articlesApi] = useApi<typeof getArticles>(getArticles)
    
    return (
        <Container>

            <Button component={Link} to={'/panel'} className={classes.top} variant="contained">Dodaj Post</Button>

            <Typography className={classes.top} align={"center"} variant="h5" component="h2">Top {topArticlesApi?.length} użytkowników</Typography>
            <Grid className={classes.top} container spacing={3}>
                {topArticlesApi?.map((item, index) =>
                    <Grid key={index} item md={4} xs={6}>
                        <Card className={classes.card} >
                            <CardContent>
                                <Typography variant="h5" component="h2">
                                    {item.name}
                                </Typography>
                                <Typography color="textSecondary">
                                    {item.surname}
                                </Typography>
                                <Typography variant="body2" component="p">
                                    {item.nickname}
                                </Typography>
    
                            </CardContent>
                            <CardActions>
                                <Button component={Link} to={`/articles/user/${item.nickname}/`} size="small">Zobacz więcej</Button>
                            </CardActions>
                        </Card>
                    </Grid>
                )}
            </Grid>
            
            <Typography className={classes.top} align={"center"} variant="h5" component="h2">Inne</Typography>
            <Grid container spacing={3}>

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
export default Home;