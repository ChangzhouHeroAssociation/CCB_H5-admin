package cn.huanzi.qch.baseadmin.common.pojo;

import cn.huanzi.qch.baseadmin.annotation.In;
import lombok.Data;

import java.io.Serializable;

/**
 * 统一返回对象
 */

@Data
public class Result<T> implements Serializable {
    /**
     * 通信数据
     */
    private T data;
    /**
     * 通信状态
     */
    private boolean status = true;
    /**
     * 通信描述
     */
    private String msg = "success";

    // 状态码
    private Integer code = 200;

    /**
     * 通过静态方法获取实例
     */
    public static <T> Result<T> of(T data) {
        return new Result<>(data);
    }

    public static <T> Result<T> of(T data, boolean flag) {
        return new Result<>(data, flag);
    }

    public static <T> Result<T> of(T data, boolean flag, String msg) {
        return new Result<>(data, flag, msg);
    }
    public static <T> Result<T> of(T data, boolean flag, Integer code, String msg) {
        return new Result<>(data, flag, code, msg);
    }

    @Deprecated
    public Result() {

    }

    private Result(T data) {
        this.data = data;
    }

    private Result(T data, boolean status) {
        this.data = data;
        this.status = status;
    }

    private Result(T data, boolean status, String msg) {
        this.data = data;
        this.status = status;
        this.msg = msg;
    }

    private Result(T data, boolean status, Integer code, String msg) {
        this.data = data;
        this.status = status;
        this.code = code;
        this.msg = msg;
    }

}
