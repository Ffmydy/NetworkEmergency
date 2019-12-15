package com.guet.service;

import java.util.List;

import com.guet.beans.Affair;
import com.guet.beans.BarBean;
import com.guet.beans.PieBean;
import com.guet.beans.Unit;

public interface IAffairService {
	List<Affair> showAffairinfo(int aff_incstate);
	List<BarBean> select_state0();
	List<BarBean> select_state1();
	List<BarBean> select_state2();
	List<PieBean> state_statistics();
	List<BarBean> type_statistics();
	
	
	List<Affair> toManagement();
	List<Affair> toConditon3(int affair_type);
	List<Affair> toConditon2(int aff_shijian);
	List<Unit> toUnit(int affair_type);
	List<Affair> toConditon4(String qiye_name);
	List<Affair> toConditon1(String mydate);
	
	

}
