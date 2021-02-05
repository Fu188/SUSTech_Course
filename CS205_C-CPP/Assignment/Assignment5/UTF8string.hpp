#ifndef UTF8STRING_HPP
#define UTF8STRING_HPP
#include<string>

class UTF8string{
	private:
		unsigned long long strlen;
		std::string str;
	
	public:
		//constructor&destructor
		UTF8string();  
		UTF8string(const char *s);
		UTF8string(const std::string);
		~UTF8string();
		std::string getstring();
		//function
		unsigned long long length()const;
		unsigned long long bytes()const;
		unsigned long long find(const std::string substr)const;
		void replace(const UTF8string to_move,const UTF8string to_replace);
		//overload +=
		void operator+=(const UTF8string str);
		void operator+=(const std::string str);
		//overload !
		std::string operator!()const;
};
		//overload <<
		std::ostream& operator<<(std::ostream& out, const UTF8string str);
		//overload +
		UTF8string& operator+(const UTF8string str1,const UTF8string str2);
		UTF8string& operator+(const std::string str1,const UTF8string str2);
		UTF8string& operator+(const UTF8string str1,const std::string str2);
		//overload *
		std::string operator*(const unsigned long long n,const UTF8string str1);
		std::string operator*(const UTF8string str1,const unsigned long long n);
		
#endif
