import axios from 'axios';

export default axios.create({
    baseURL: process.env.REACT_APP_API_URL,
    /* other custom settings */
    params:{
        api_token: localStorage.getItem('api_token')
    }
});

