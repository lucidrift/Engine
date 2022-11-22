#include "string.hxx"

namespace lucidRift::rivot::util {
String::String(const char data[]) : m_length(0) {
    for (size_t i = 0; data[i] != '\0'; i++)
        m_length++;
    m_data = new char[m_length + 1];
    for (size_t i = 0; i < m_length; i++)
        m_data[i] = data[i];
    m_data[m_length] = '\0';
}

String::String(const String &data) : m_length(data.m_length) {
    m_data = new char[m_length + 1];
    for (size_t i = 0; i < m_length; i++)
        m_data[i] = data.m_data[i];
    m_data[m_length] = '\0';
}

String::~String() {
    delete[] m_data;
}

size_t String::length() const {
    return m_length;
}

String::operator const char *() const {
    return m_data;
}

String &String::operator+=(const lucidRift::rivot::util::String &data) {
    char *newData = new char[m_length + data.m_length + 1];
    for (size_t i = 0; i < m_length; i++)
        newData[i] = m_data[i];
    for (size_t i = 0; i < data.m_length; i++)
        newData[m_length + i] = data.m_data[i];
    newData[m_length + data.m_length] = '\0';
    delete[] m_data;
    m_data = newData;
    m_length += data.m_length;
    return *this;
}
}
