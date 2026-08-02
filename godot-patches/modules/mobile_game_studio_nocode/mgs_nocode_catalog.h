#pragma once

#include "core/string/ustring.h"
#include "core/templates/vector.h"
#include "core/variant/variant.h"

struct MGSNoCodeDefinition {
    String id;
    String title;
    String category;
};

class MGSNoCodeCatalog {
public:
    static constexpr int EXPECTED_SIZE = 961;
    static const Vector<MGSNoCodeDefinition> &definitions();
    static const MGSNoCodeDefinition *find(const String &p_id);
    static int size();
};
