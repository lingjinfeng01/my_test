import axios from 'axios'

const service = axios.create({
  baseURL: 'http://localhost:8888', // 设置请求的baseURL
  timeout: 5000, // 设置请求超时时间
  headers: {
    'Content-Type': 'application/json' // 设置请求头
  }
})
export function AxGet(url, params) {
    return service.get(url, {
      params
    })
  }
  
  export function AxPost(url, data) {
    return service.post(url, data)
  }
  
  export function AxPut(url, data) {
    return service.put(url, data)
  }
  
  export function AxDel(url, data) {
    return service.delete(url, data)
  }
  