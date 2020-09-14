import React from 'react';
import { Redirect, Route,RouteProps } from "react-router-dom";




const PrivateRoute: React.FC<RouteProps> = ({ children, ...rest }) => {
    const isLogin = localStorage.getItem("api_token") ? true : false
    return (
        <Route
            {...rest}
            render={({ location }) =>
                isLogin ? (
                    children
                ) : (
                        <Redirect
                            to={{
                                pathname: "/login",
                                state: { from: location }
                            }}
                        />
                    )
            }
        />
    )
}

export default PrivateRoute;