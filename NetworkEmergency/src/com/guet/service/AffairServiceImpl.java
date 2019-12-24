package com.guet.service;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.guet.beans.Affair;
import com.guet.beans.BarBean;
import com.guet.beans.PieBean;
import com.guet.beans.Unit;
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
	@Override
	public List<Affair> toManagement() {
		List<Affair> affairs=affairdao.toManagement();
		return affairs;
	}
	@Override
	public List<Affair> toConditon3(int aff_userType) {
		List<Affair> affair3=affairdao.toConditon3(aff_userType);
		return affair3;
	}
	@Override
	public List<Unit> toUnit(int affair_type) {
		List<Unit> units=affairdao.toUnit(affair_type);
		for (Unit affair : units) {
			System.out.println(affair.toString());
		}
		return units;
	}
	@Override
	public List<Affair> toConditon2(int aff_shijian) {
		List<Affair> affair2=affairdao.toConditon2(aff_shijian);
		return affair2;
	}
	@Override
	public List<Affair> toConditon4(String qiye_name) {
		List<Affair> affair4=affairdao.toConditon4(qiye_name);
		return affair4;
	}
	@Override
	public List<Affair> toConditon1(String mydate) {
		List<Affair> affair1=affairdao.toConditon1(mydate);
		return affair1;
	}
	@Override
	public List<BarBean> type_statistics() {
		List<BarBean> list=affairdao.type_statistics();
		return list;
	}
	@Override
	public List<Affair> showownaffair(String user_unit) {
		List<Affair> list=affairdao.showownaffair(user_unit);
		return list;
	}
	@Override
	public void detal(Integer aff_incstate, Integer aff_id) {
		affairdao.detal(aff_incstate,aff_id);
	}
	@Override
	public Unit checkifexist_unit(String unit_name) {
		Unit unit=affairdao.checkifexit_unit(unit_name);
		return unit;
	}
	@Override
	public void transpondaffair(Integer aff_id, String unit_name) {
		affairdao.transpondaffair(aff_id,unit_name);
	}
	@Override
	public void publish(Affair affair) {
		affairdao.publish(affair);
		
	}
}
