package com.guet.service;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.guet.beans.Affair;
import com.guet.beans.BarBean;
import com.guet.beans.PieBean;
import com.guet.dao.IAffairDao;
@Service("affairService")
public class AffairServiceImpl implements IAffairService {
	@Resource(name="IAffairDao")
	private IAffairDao affairdao;
	public void setDao(IAffairDao affairDao){
		this.affairdao=affairDao;
	}
	@Override
	public List<Affair> showAffairinfo(int aff_incstate) {
		List<Affair> IAffair=null;
		if(aff_incstate==0){
			 IAffair=affairdao.showAffairInfo_0(aff_incstate);
		}
		if(aff_incstate==1){
			 IAffair=affairdao.showAffairInfo_1(aff_incstate);
		}
		if(aff_incstate==2){
			 IAffair=affairdao.showAffairInfo_2(aff_incstate);
		}
		
		return IAffair;
	}
	@Override
	public List<BarBean> select_state0() {
		List<BarBean> list=affairdao.select_state0();
		return list;
	}
	@Override
	public List<BarBean> select_state1() {
		List<BarBean> list=affairdao.select_state1();
		return list;
	}
	@Override
	public List<BarBean> select_state2() {
		List<BarBean> list=affairdao.select_state2();
		return list;
	}
	@Override
	public List<PieBean> state_statistics() {
		List<PieBean> list=affairdao.state_statistics();
		return list;
	}
	
	
}
