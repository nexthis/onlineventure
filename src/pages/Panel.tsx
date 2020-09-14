import React, { useState, useMemo } from "react";
import { Container, TextField, Button, Box, Grid, List, ListItem, ListItemText, ListItemSecondaryAction, IconButton } from "@material-ui/core"
import { Delete } from '@material-ui/icons';
import { makeStyles } from '@material-ui/core/styles';

import { useApi } from 'hooks/useApi'
import { getArticles } from 'api/article'
import axios from 'utils/client';

const useStyles = makeStyles((theme) => ({
    formItem: {
        marginTop: theme.spacing(3)
    },
    list: {
        maxHeight: '99vh',
        width: '100%',
        overflow: 'auto',
    },
}));

const Panel = () => {
    const classes = useStyles();
    const [articlesApi,articlesState, articlesTools] = useApi<typeof getArticles>(getArticles)
    const [title, setTitle] = useState('');
    const [text, setText] = useState('');
    const [id, setId] = useState(null);

    const setArticleHandle = (item: any) => {
        setTitle(item.title)
        setText(item.text)
        setId(item.id)
        
    }

    const clearArticleHandle = (e: React.MouseEvent<HTMLButtonElement>) => {
        setTitle('')
        setText('')
        setId(null)
    }

    const sendArticleHandle = (e: React.MouseEvent<HTMLButtonElement>) => {
        if(!id){
            axios.post('article', { text: text, title: title }).then(({data:request})=>{
                ///@ts-ignore
                articlesTools.changeData((data)=> [...data, request] );
             })
        }
        else{
            axios.put('article', { text: text, title: title, id: id }).then(({data})=>{
              // articlesTools.changeData(data);
            })
        }
    }

    const deleteArticleHandle = (id: number)=>{
        // it's good to hide item here... 
        axios.delete(`/article/${id}`).then(({data})=>{
            ///@ts-ignore
             articlesTools.changeData(data => data?.filter(x => x.id !== id));
        })
    }

    return (
        <Container>
            <Grid container spacing={2}>
                <Grid item md={7} xs={12}>
                    <form autoComplete="off">
                        <Box display="flex" flexDirection="column">
                            <TextField className={classes.formItem} value={title} onChange={(e) => setTitle(e.target.value)} required label="Tytuł" />
                            <TextField className={classes.formItem} value={text} onChange={(e) => setText(e.target.value)} required label="Tekst" multiline rows={10} />
                            <Box display="flex" justifyContent="space-between">
                                <Button onClick={clearArticleHandle} className={classes.formItem} variant="contained">Nowy</Button>
                                <Button onClick={sendArticleHandle} className={classes.formItem} variant="contained">Wyślij</Button>
                            </Box>
                        </Box>
                    </form>
                </Grid>
                <Grid item md={5} xs={12} >
                    <List className={classes.list}>
                        {useMemo(() => articlesApi?.map((item, index) =>
                            (
                                <ListItem  onClick={(e) => setArticleHandle(item)} button key={index} >
                                    <ListItemText primary={item.title}
                                        secondary={(
                                            <>
                                                {item.text.substring(0, 20)}
                                                <br />
                                        Autorzy:  {item.author.map(item => item.nickname).join(', ')}
                                            </>
                                        )} />
                                    <ListItemSecondaryAction>
                                        <IconButton onClick={(e)=>deleteArticleHandle(item.id)} edge="end" aria-label="comments">
                                            <Delete />
                                        </IconButton>
                                    </ListItemSecondaryAction>
                                </ListItem>
                            )
                        ), [articlesApi])}
                    </List>
                </Grid>
            </Grid>
        </Container>
    )
}
export default Panel;