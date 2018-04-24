#include <gtirb/Region.hpp>
#include <gtirb/Module.hpp>
#include <gtirb/NodeValidators.hpp>

using namespace gtirb;

BOOST_CLASS_EXPORT_IMPLEMENT(gtirb::Region);

Region::Region() : Node()
{
	this->addParentValidator(gtirb::NodeValidatorHasParentOfType<gtirb::Module>());
}

void Region::addEA(gtirb::EA x)
{
	this->eas.insert(x);
}

std::set<gtirb::EA> Region::getEAs() const
{
	return this->eas;
}
