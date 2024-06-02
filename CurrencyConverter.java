package com.sumanth.exam;

public class CurrencyConverter implements CurrencyConversion {

	public static void main(String[] args) {
		CurrencyConverter cc=new CurrencyConverter();
		cc.rupee_dollar(1000);
		cc.dollar_rupee(23);
		cc.rupee_euro(1000);
		cc.euro_rupee(23);
		cc.rupee_yen(1000);
		cc.yen_rupee(10000);
	}

	@Override
	public void rupee_dollar(float r) {
		float d=(float) (r/83.3);
		System.out.println(r+"/- = "+d+"$");
	}

	@Override
	public void dollar_rupee(float d) {
		float r=(float)(d*83.3);
		System.out.println(d+"$ = "+r+"/-");
	}

	@Override
	public void rupee_euro(float r) {
		float e=(float)(r/89.7);
		System.out.println(r+"/- ="+e+"euros");
	}

	@Override
	public void euro_rupee(float e) {
		float r=(float)(e*89.7);
		System.out.println(e+"euros = "+r+"/-");
	}

	@Override
	public void rupee_yen(float r) {
		float y=(float)(r/0.57);
		System.out.println(r+"/- = "+y+"yens");
	}

	@Override
	public void yen_rupee(float y) {
		float r=(float)(y*0.57);
		System.out.println(y+"yens = "+r+"/-");
	}

}
