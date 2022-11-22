#pragma once

#include <cstddef>

namespace lucidRift::rivot::util {
/// A class used for encapsulating and manipulating string data.
class String {
private:
    /// The string data. This contains the string as a constant
    /// character array.
    char *m_data;

    /// This is the length of the string. This variable may change
    /// it's value at any time when the string is extended or initialized.
    size_t m_length;

public:
    /// Create a new instance of a string from a constant
    /// character array.
    /// @param data The constant character array to use for the string.
    String(const char data[]);

    /// Create a new instance of a string from another string.
    /// @param data The string to use for the string.
    String(const String &data);

    ~String();

    /// Get the length of the string.
    /// @return The length of the string.
    [[nodiscard]] size_t length() const;

    /// Get the string as a constant dynamic char array that will
    /// be deleted at the end of the string's life time.
    /// @return The string as a constant dynamic char array.
    operator const char *() const;

    /// Add another string to this current string. Concatenation
    /// is done by copying the data from the other string to the
    /// end of this string.
    /// @param data The string to concatenate to this string.
    /// @return A reference to this string.
    String &operator += (const String &data);
};
}
