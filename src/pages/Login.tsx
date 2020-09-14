import React, { useState } from "react";
import { Container, Box, TextField, Button, Typography } from "@material-ui/core"
import { useHistory, useLocation } from 'react-router-dom'
import axios from 'utils/client';

const Login = () => {
    const location = useLocation<{from: {pathname: string}}>()
    const history = useHistory();
    const [nickname, setNickname] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');

    const loginHandle = (e: React.MouseEvent<HTMLButtonElement>) => {

        axios.post('login', { password, nickname }).then(({ data }) => {
            if (data.api_token) {
                localStorage.setItem('api_token', data.api_token)
                history.push(location.state.from.pathname)
                return ;
            }
            setError("Błędny login lub hasło")
            console.log(data);

        }).catch(()=>setError("Błędny login lub hasło"))
    }

    return (
        <Container>
            <form >
                <Box display="flex" flexDirection="column">
                    <TextField value={nickname} onChange={(e) => setNickname(e.target.value)} required label="Nazwa" />
                    <TextField value={password} onChange={(e) => setPassword(e.target.value)} type="password" required label="Hasło" />
                    <Button onClick={loginHandle} variant="contained">Zaloguj</Button>
                </Box>
            </form>
            <Typography variant="body1" component="p" >{error}</Typography>
        </Container>
    )
}
export default Login;