#include <string>
#include <iostream>

class ClassSkeleton
{
public:
	ClassSkeleton();
	~ClassSkeleton();

	void SetWord(std::string arg_word);
	void Say();

private:
	void CountCalledTime();

	std::string m_member_variable;
	int m_called_time;
};

ClassSkeleton::ClassSkeleton()
{
	m_member_variable = "class module example";
	m_called_time = 0;
}

ClassSkeleton::~ClassSkeleton()
{
	std::cout << "Destructor is called" << std::endl;
}

void ClassSkeleton::SetWord(std::string arg_word)
{
	m_member_variable = arg_word;
	CountCalledTime();
}

void ClassSkeleton::Say()
{
	std::cout << m_member_variable << std::endl;
	std::cout << "called time is " << m_called_time << std::endl;
}

void ClassSkeleton::CountCalledTime()
{
	m_called_time++;
}
