#ifndef CStereoShape_H
#define CStereoShape_H
class CStereoShape{	
	public:
		CStereoShape(){numberofObjects++;}
		virtual double GetArea();
		virtual double GetVolume();
		virtual void show();
		static int GetNumofObject(){ return numberofObjects;}
	private:
		static int numberofObjects;
};
#endif 
