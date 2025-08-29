import axios, { InternalAxiosRequestConfig } from 'axios';

const API = axios.create({
  baseURL: process.env.VITE_API_URL || 'http://localhost:4000/api',
});

API.interceptors.request.use((config: InternalAxiosRequestConfig) => {
  const token = localStorage.getItem('token');
  if (token) {
    config.headers.Authorization = `Bearer ${token}`;
  }
  return config;
});

export default API;