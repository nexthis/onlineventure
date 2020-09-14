import { lazy } from "react";
const Home = lazy(() => import('pages/Home'));
const Panel = lazy(() => import('pages/Panel'));
const Login = lazy(() => import('pages/Login'));
const ShowArticle = lazy(() => import('pages/ShowArticle'));
const ShowUser = lazy(() => import('pages/ShowUser'));

export enum Name {
  Home = '/',
  Login = '/login',
  Panel = '/Panel',
  ShowArticle = '/article/:id/',
  ShowUser =  '/articles/user/:name/'
}

export default [
  {
    path: Name.Home,
    exact: true,
    auth: false,
    component: Home,
  },
  {
    path: Name.Login,
    exact: true,
    auth: false,
    component: Login,
  },
  {
    path: Name.Panel,
    exact: true,
    auth: true,
    component: Panel,
  },
  {
    path: Name.ShowArticle,
    exact: true,
    auth: true,
    component: ShowArticle,
  },
  {
    path: Name.ShowUser,
    exact: true,
    auth: true,
    component: ShowUser,
  },
];
