import { pa } from "element-plus/es/locale";
import { AxGet,AxPost,AxPut,AxDel } from "../utils/request";
const api = {
    GetList:'/user/getUserList?page={page}&pageSize={pageSize}',
    AddUser:'/user/addUser',
    GetUserById:'/user/info/{id}',
    EditUser:'/user/update',
    DelUser:'/user/removeUser/{id}',
    RemoveUsers:'/user/removeUsers?ids={ids}',
    ForSearch:'/user/forSearch?key={key}'
}
export const getList = (param)=>AxGet(api.GetList.replace('{page}',param.page).replace('{pageSize}',param.pageSize))
export const addUser = (data)=>AxPost(api.AddUser,data)
export const getUserById = (param)=>AxGet(api.GetUserById.replace('{id}',param))
export const editUser =(param)=>AxPut(api.EditUser,param)
export const delUser = (param)=>AxDel(api.DelUser.replace('{id}',param))
export const removeUsers = (param)=>AxDel(api.RemoveUsers.replace('{ids}',param))
export const search = (param)=>AxPost(api.ForSearch.replace('{key}',param))



