package com.guet.dao;
import java.util.List;
import com.guet.beans.Affair;
import com.guet.beans.BarBean;
import com.guet.beans.PieBean;
public interface IAffairDao {
	List<Affair> showAffairInfo_0(int aff_incstate);
	List<Affair> showAffairInfo_1(int aff_incstate);
	List<Affair> showAffairInfo_2(int aff_incstate);
	List<BarBean> select_state0();
	List<BarBean> select_state1();
	List<BarBean> select_state2();
	List<PieBean> state_statistics();
	List<BarBean> type_statistics();
}
