import axios from 'utils/client';
import { UserApi } from 'global';

export interface ArticlesInterface {
    id: number,
    title: string,
    text: string,
    author: Array<UserApi>
    created_at: string,
    updated_at: string,
}

export async function getArticles() {
    try {
        const { data } = await axios.get<Array<ArticlesInterface>>('articles')
        return data;
    }
    catch{
        return null
    }
}

export async function getArticle(id: number | number = 1) {
    try {
        const { data } = await axios.get<ArticlesInterface>(`article/${id}`)
        return data;
    }
    catch{
        return null
    }
}

export async function getTopArticles() {
    try {
        const { data } = await axios.get<Array<UserApi>>('/articles/most-polular-of-the-week')
        return data;
    }
    catch{
        return null
    }
}

export async function getUserArticles(nick: string) {
    try {
        const { data } = await axios.get<Array<ArticlesInterface>>(`/articles/user/${nick}`)
        return data;
    }
    catch{
        return null
    }
}
