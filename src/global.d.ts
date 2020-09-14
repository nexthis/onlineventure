export interface PaginateApi<T> {
    current_page: number
    first_page_url: string
    from: number
    last_page: number
    last_page_url: string
    next_page_url: string | null
    path: string
    per_page: number
    prev_page_url: string | null
    to: number
    total: number
    data: T
}

export interface UserApi{
    id: number,
    nickname: string,
    name: string,
    surname: string,
    created_at: string,
    updated_at: string,
}