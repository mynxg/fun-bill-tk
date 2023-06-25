package com.nxg.mapper;

import com.nxg.entity.Bill;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author nxg
 *
 * @apiNote   数据访问层
 */
public interface BillMapper extends Mapper<Bill> {
    public List<Bill> select(Bill b);
}
