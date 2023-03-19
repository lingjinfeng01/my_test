<template>
  <div>
    <div class="table">
      <div class="top">
        <el-button type="primary" @click="showFormDialog">新建</el-button>
        <el-input
          v-model="input1"
          style="width: 30%; margin-left: 20px"
          placeholder="Please Input"
          @keydown.enter="searchList"
        />
        <el-button style="margin-left: auto; margin-right: 20px" type="primary"
          @click="tuitui">撤销</el-button
        >
      </div>

      <el-table
        style="backgroud-color: #fff"
        border
        :data="tableData"
        @select="selectRows"
      >
        <el-table-column type="selection" width="55" />
        <el-table-column label="姓名" prop="name"></el-table-column>
        <el-table-column label="年龄" prop="age"></el-table-column>
        <el-table-column label="性别" prop="gender"></el-table-column>
        <el-table-column label="联系电话" prop="phone"></el-table-column>
        <el-table-column label="详细地址" prop="address"></el-table-column>
        <el-table-column label="操作">
          <template #default="{ row }">
            <el-button type="text" size="small" @click="handleEdit(row)"
              >编辑</el-button
            >
            <el-button type="text" size="small" @click="handleDelete(row)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>
      <div class="bottom">
        <el-button type="primary" @click="delUsers">批量删除</el-button>
        <el-pagination
          layout="prev, pager, next,sizes"
          v-model:current-page="pagination.page"
          v-model:page-size="pagination.pageSize"
          :total="pagination.total"
          :page-sizes="[10, 20, 30, 40, 50, 100]"
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
        />
      </div>
    </div>
    <el-dialog v-model="showForm" title="填写表单">
      <el-form :model="form" :rules="rules" ref="ruleForm" label-width="80px">
        <el-form-item label="姓名" prop="name">
          <el-input v-model="form.name"></el-input>
        </el-form-item>
        <el-form-item label="年龄" prop="age">
          <el-input v-model.number="form.age"></el-input>
        </el-form-item>
        <el-form-item label="性别" prop="gender">
          <el-select v-model="form.gender" placeholder="请选择">
            <el-option label="男" value="男"></el-option>
            <el-option label="女" value="女"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="电话" prop="phone">
          <el-input v-model="form.phone"></el-input>
        </el-form-item>
        <el-form-item label="地址" prop="address">
          <el-select v-model="form.address" placeholder="请选择">
            <el-option label="北京市" value="beijing"></el-option>
            <el-option label="上海市" value="shanghai"></el-option>
            <el-option label="广州市" value="guangzhou"></el-option>
            <el-option label="深圳市" value="shenzhen"></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer">
        <el-button @click="showForm = false">取 消</el-button>
        <el-button type="primary" @click="submitForm(ruleForm)"
          >确 定</el-button
        >
      </div>
    </el-dialog>
  </div>
</template>
<script>
import { onBeforeMount, onMounted, reactive, ref } from "vue";
import { ElTable, ElTableColumn, ElButton, ElMessage } from "element-plus";
import * as api from "../api/user";

export default {
  components: {
    ElTable,
    ElTableColumn,
    ElButton,
    ElMessage,
  },
  setup() {
    let showForm = ref(false);
    const ruleForm = ref();
    let form = reactive({
      id: "",
      name: "",
      age: "",
      gender: "",
      phone: "",
      address: "",
    });
    const pagination = reactive({
      page: 1,
      pageSize: 10,
      total: 0,
    });
    const tableData = ref([]);
    const getListData = async () => {
      let res = await api.getList(pagination);
      console.log(res);
      if (res.data.code == 200) {
        tableData.value = res.data.data.list;
        pagination.total = res.data.data.total
        // console.log(res.data.data);
          // console.log(res.data);
          
        // pagination.total = res.data.data.length
      }
    };

    const rules = ref({
      name: [{ required: true, message: "请输入姓名", trigger: "blur" }],
      phone: [{ required: true, message: "请输入电话", trigger: "blur" }],
      age: [
        { required: true, message: "请输入年龄", trigger: "blur" },
        { type: "number", message: "年龄必须为数字值" },
      ],
      gender: [{ required: true, message: "请选择性别", trigger: "change" }],
      address: [{ required: true, message: "请选择地址", trigger: "change" }],
    });
    const showFormDialog = () => {
      showForm.value = true;
      console.log(showForm.value);
    };
    //提交按钮
    const submitForm = async (formEl) => {
      console.log(formEl);
      await formEl.validate(async (valid, filds) => {
        if (valid) {
          //有id修改用户
          if (form.id) {
            console.log("have id");
            let res = await api.editUser(form);
            if (res.data.code == 200) {
              ElMessage({
                message: res.data.msg,
                type: "success",
              });
              showForm.value = false;
              //刷新
              getListData();
            } else {
              ElMessage({
                message: res.data.msg,
                type: "error",
              });
              showForm.value = false;
              getListData();
            }
          } else {
            //无id添加用户
            let res = await api.addUser(form);
            console.log(res);
            if (res.data.code == 200) {
              ElMessage({
                message: res.data.msg,
                type: "success",
              });
              showForm.value = false;
              getListData();
            } else {
              ElMessage({
                message: res.data.msg,
                type: "error",
              });
              showForm.value = false;
              getListData();
            }
          }
        } else {
          return false;
        }
      });
    };

    const handleEdit = async (row) => {
      // 编辑逻辑
      let id = row.id;
      const res = await api.getUserById(id);
      if (res.data.code == 200) {
        showForm.value = true;
        Object.assign(form, res.data.data);
      }
    };
     const handleSizeChange = (val)=>{
          pagination.pageSize = val
          getListData()
     }
     const handleCurrentChange = (val)=>{
        pagination.page = val
        getListData()
     }
    const input1 = ref("");
    const ids = ref("");
    //获取当前选择行
    const selectRows = (selection, row) => {
      let sele = JSON.stringify(selection);
      let data = JSON.parse(sele);
      let idList = data.map((item) => {
        return item.id;
      });
      console.log(idList);
      let idsStr = idList.join(",");
      ids.value = idsStr;
    };
    const handleDelete = async (row) => {
      // 删除逻辑
      let id = row.id;
      let res = await api.delUser(id);
      if (res.data.code == 200) {
        ElMessage({
          message: res.data.msg,
          type: "success",
        });
        getListData();
      } else {
        ElMessage({
          message: res.data.msg,
          type: "error",
        });
        getListData();
      }
    };
    //批量删除
    const delUsers = async () => {
      let res = await api.removeUsers(ids.value);

      if (res.data.code == 200) {
        ElMessage({
          message: res.data.msg,
          type: "success",
        });
        showForm.value = false;
        //刷新
        getListData();
      } else {
        ElMessage({
          message: res.data.msg,
          type: "error",
        });
        showForm.value = false;
        getListData();
      }
    };
    const tuitui = ()=>{
      ElMessage.info("你想撤消什么呢")
    }
    //按键enter搜索
    const searchList = async ()=>{
       console.log(input1.value);
         let res =  await api.search(input1.value)
         if(res.data.code == 200){
          tableData.value = res.data.data
          ElMessage.success('搜索成功')
         }else{
          ElMessage.error(res.data.msg)
         }
    }
    onBeforeMount(() => {
      getListData();
    });
    return {
      tableData,
      handleEdit,
      handleDelete,
      input1,
      showForm,
      form,
      rules,
      submitForm,
      showFormDialog,
      ruleForm,
      selectRows,
      delUsers,
      pagination,
      handleSizeChange,
      handleCurrentChange,
      searchList,
      tuitui
    };
  },
};
</script>
<style lang="less" scoped>
.top {
  display: flex;
  margin-bottom: 20px;
}
.bottom {
  display: flex;
  justify-content: space-between;
  margin: 20px;
}
</style>