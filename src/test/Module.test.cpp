#include <gtest/gtest.h>
#include <proto/Module.pb.h>
#include <gtirb/AddrRanges.hpp>
#include <gtirb/Block.hpp>
#include <gtirb/Data.hpp>
#include <gtirb/IR.hpp>
#include <gtirb/ImageByteMap.hpp>
#include <gtirb/Module.hpp>
#include <gtirb/Procedure.hpp>
#include <gtirb/Relocation.hpp>
#include <gtirb/Section.hpp>
#include <gtirb/Serialization.hpp>
#include <gtirb/Symbol.hpp>
#include <gtirb/SymbolicOperand.hpp>

#include <memory>

using namespace gtirb;

TEST(Unit_Module, ctor_0)
{
    EXPECT_NO_THROW(gtirb::Module());
}

TEST(Unit_Module, setBinaryPath)
{
    const std::string strPath("/home/gt/irb/foo");
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->setBinaryPath(strPath));

    auto path = m->getBinaryPath();
    EXPECT_EQ(boost::filesystem::path(strPath), path);
}

TEST(Unit_Module, getFileFormatDefault)
{
    auto m = std::make_shared<gtirb::Module>();
    EXPECT_EQ(gtirb::FileFormat::Undefined, m->getFileFormat());
}

TEST(Unit_Module, setFileFormat)
{
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->setFileFormat(gtirb::FileFormat::COFF));
    EXPECT_EQ(gtirb::FileFormat::COFF, m->getFileFormat());

    EXPECT_NO_THROW(m->setFileFormat(gtirb::FileFormat::MACHO));
    EXPECT_EQ(gtirb::FileFormat::MACHO, m->getFileFormat());

    EXPECT_NO_THROW(m->setFileFormat(gtirb::FileFormat::Undefined));
    EXPECT_EQ(gtirb::FileFormat::Undefined, m->getFileFormat());
}

TEST(Unit_Module, getRebaseDeltaDefault)
{
    auto m = std::make_shared<gtirb::Module>();
    EXPECT_EQ(int64_t{0}, m->getRebaseDelta());
}

TEST(Unit_Module, setRebaseDelta)
{
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->setRebaseDelta(1));
    EXPECT_EQ(int64_t{1}, m->getRebaseDelta());

    EXPECT_NO_THROW(m->setRebaseDelta(-1));
    EXPECT_EQ(int64_t{-1}, m->getRebaseDelta());

    EXPECT_NO_THROW(m->setRebaseDelta(std::numeric_limits<int64_t>::max()));
    EXPECT_EQ(std::numeric_limits<int64_t>::max(), m->getRebaseDelta());

    EXPECT_NO_THROW(m->setRebaseDelta(std::numeric_limits<int64_t>::min()));
    EXPECT_EQ(std::numeric_limits<int64_t>::min(), m->getRebaseDelta());

    EXPECT_NO_THROW(m->setRebaseDelta(std::numeric_limits<int64_t>::lowest()));
    EXPECT_EQ(std::numeric_limits<int64_t>::lowest(), m->getRebaseDelta());
}

TEST(Unit_Module, getEAMinMaxDefault)
{
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->getEAMinMax());
    EXPECT_EQ(gtirb::EA{}, m->getEAMinMax().first);
    EXPECT_EQ(gtirb::EA{}, m->getEAMinMax().second);
}

TEST(Unit_Module, setEAMinMax)
{
    auto m = std::make_shared<gtirb::Module>();

    gtirb::EA minimum{64};
    gtirb::EA maximum{1024};

    EXPECT_TRUE(m->setEAMinMax({minimum, maximum}));
    EXPECT_EQ(minimum, m->getEAMinMax().first);
    EXPECT_EQ(maximum, m->getEAMinMax().second);

    EXPECT_FALSE(m->setEAMinMax({maximum, minimum}));
    EXPECT_EQ(gtirb::EA{}, m->getEAMinMax().first);
    EXPECT_EQ(gtirb::EA{}, m->getEAMinMax().second);
}

TEST(Unit_Module, getPreferredEADefault)
{
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->getPreferredEA());
    EXPECT_EQ(gtirb::EA{}, m->getPreferredEA());
}

TEST(Unit_Module, getISAID)
{
    auto m = std::make_shared<gtirb::Module>();

    EXPECT_NO_THROW(m->getISAID());
    EXPECT_EQ(gtirb::ISAID::Undefined, m->getISAID());

    EXPECT_NO_THROW(m->setISAID(gtirb::ISAID::X64));
    EXPECT_EQ(gtirb::ISAID::X64, m->getISAID());
}

TEST(Unit_Module, setPreferredEA)
{
    auto m = std::make_shared<gtirb::Module>();
    const gtirb::EA preferred{64};

    EXPECT_NO_THROW(m->getPreferredEA());
    EXPECT_NO_THROW(m->setPreferredEA(preferred));

    EXPECT_EQ(preferred, m->getPreferredEA());
}

TEST(Unit_Module, getAddrRanges)
{
    auto m = std::make_shared<gtirb::Module>();
    EXPECT_NO_THROW(m->getAddrRanges());
}

TEST(Unit_Module, getSymbolSet)
{
    gtirb::Module m;
    EXPECT_NO_THROW(m.getSymbolSet());
}

TEST(Unit_Module, getProcedureSet)
{
    auto m = std::make_shared<gtirb::Module>();
    EXPECT_NO_THROW(m->getProcedureSet());
}

TEST(Unit_Module, getImageByteMap)
{
    auto m = std::make_shared<gtirb::Module>();
    EXPECT_NO_THROW(m->getImageByteMap());
}

TEST(Unit_Module, getIsSetupComplete)
{
    auto m = std::make_unique<gtirb::Module>();
    EXPECT_NO_THROW(m->getIsSetupComplete());
    EXPECT_FALSE(m->getIsSetupComplete());
}

TEST(Unit_Module, getIsReadOnly)
{
    auto m = std::make_unique<gtirb::Module>();
    EXPECT_NO_THROW(m->getIsReadOnly());
    EXPECT_FALSE(m->getIsReadOnly());
}

TEST(Unit_Module, setName)
{
    const std::string name{"foo"};
    auto m = std::make_unique<gtirb::Module>();

    EXPECT_NO_THROW(m->setName(name));
    EXPECT_EQ(name, m->getName());
}

TEST(Unit_Module, getName)
{
    auto m = std::make_unique<gtirb::Module>();
    EXPECT_NO_THROW(m->getName());
    EXPECT_TRUE(m->getName().empty());
}

TEST(Unit_Module, setDecodeMode)
{
    const uint64_t decodeMode{0x10101010};
    auto m = std::make_unique<gtirb::Module>();

    EXPECT_NO_THROW(m->setDecodeMode(decodeMode));
    EXPECT_EQ(decodeMode, m->getDecodeMode());
}

TEST(Unit_Module, getDecodeMode)
{
    auto m = std::make_unique<gtirb::Module>();
    EXPECT_NO_THROW(m->getDecodeMode());
    EXPECT_EQ(uint64_t{0}, m->getDecodeMode());
}

TEST(Unit_Module, protobufRoundTrip)
{
    gtirb::Module result;
    proto::Module message;

    UUID addrRangesID, byteMapID, procedureID, symbolID, blockID, dataID, sectionID;
    std::pair<EA, EA> eaMinMax;
    EA relocationEA;
    int whichSymbolic;

    {
        Module original;
        original.setBinaryPath("test");
        original.setEAMinMax({EA(1), EA(2)});
        original.setPreferredEA(EA(3));
        original.setRebaseDelta(4);
        original.setFileFormat(FileFormat::ELF);
        original.setISAID(ISAID::X64);
        original.setName("module");
        original.setDecodeMode(5);
        original.getProcedureSet()[EA(6)] = {};
        original.getSymbolSet().push_back({});
        original.getBlocks().emplace_back();
        original.getRelocations().push_back({EA(8), "foo", "bar", 1});
        original.getData().push_back({});
        original.getSections().push_back({});
        original.getSymbolicOperands().insert({EA(7), {SymAddrConst()}});

        addrRangesID = original.getAddrRanges().getUUID();
        byteMapID = original.getImageByteMap().getUUID();
        procedureID = original.getProcedureSet().begin()->second.getUUID();
        symbolID = original.getSymbolSet().begin()->getUUID();
        blockID = original.getBlocks().begin()->getUUID();
        dataID = original.getData().begin()->getUUID();
        sectionID = original.getSections().begin()->getUUID();
        eaMinMax = original.getEAMinMax();
        relocationEA = original.getRelocations().begin()->ea;
        whichSymbolic = original.getSymbolicOperands().begin()->second.which();

        original.toProtobuf(&message);
    }

    // original has been destroyed, so UUIDs can be reused
    result.fromProtobuf(message);

    EXPECT_EQ(result.getBinaryPath(), "test");
    EXPECT_EQ(result.getEAMinMax(), eaMinMax);
    EXPECT_EQ(result.getPreferredEA(), EA(3));
    EXPECT_EQ(result.getRebaseDelta(), 4);
    EXPECT_EQ(result.getFileFormat(), FileFormat::ELF);
    EXPECT_EQ(result.getISAID(), ISAID::X64);
    EXPECT_EQ(result.getName(), "module");
    EXPECT_EQ(result.getDecodeMode(), 5);

    // Make sure various collections and node members are serialized, but
    // don't check in detail as they have their own unit tests.
    EXPECT_EQ(result.getAddrRanges().getUUID(), addrRangesID);
    EXPECT_EQ(result.getImageByteMap().getUUID(), byteMapID);

    EXPECT_EQ(result.getProcedureSet().size(), 1);
    EXPECT_EQ(result.getProcedureSet().begin()->second.getUUID(), procedureID);

    EXPECT_EQ(result.getSymbolSet().size(), 1);
    EXPECT_EQ(result.getSymbolSet().begin()->getUUID(), symbolID);

    EXPECT_EQ(result.getBlocks().size(), 1);
    EXPECT_EQ(result.getBlocks().begin()->getUUID(), blockID);

    EXPECT_EQ(result.getRelocations().size(), 1);
    EXPECT_EQ(result.getRelocations().begin()->ea, relocationEA);

    EXPECT_EQ(result.getData().size(), 1);
    EXPECT_EQ(result.getData().begin()->getUUID(), dataID);

    EXPECT_EQ(result.getSections().size(), 1);
    EXPECT_EQ(result.getSections().begin()->getUUID(), sectionID);

    EXPECT_EQ(result.getSymbolicOperands().size(), 1);
    EXPECT_EQ(result.getSymbolicOperands().begin()->second.which(), whichSymbolic);
}
