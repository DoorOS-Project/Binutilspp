#ifndef LIBRARIES_HPP
#define LIBRARIES_HPP

#ifdef _MSC_VER
#define LIBEXPORT __declspec(dllexport)
#define LIBIMPORT __declspec(dllimport)
#elif defined(__GNUC__)
#define LIBEXPORT __attribute__((visibility("default")))
#define LIBIMPORT
#endif

#ifdef BUILD_DLL
#define LIBLINKAGE LIBEXPORT
#else
#define LIBLINKAGE LIBIMPORT
#endif

#endif