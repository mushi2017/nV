/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class nV_VarPtr */

#ifndef _Included_nV_VarPtr
#define _Included_nV_VarPtr
#ifdef __cplusplus
extern "C" {
#endif
    /*
     * Class:     nV_VarPtr
     * Method:    _destroy
     * Signature: (J)V
     */
    JNIEXPORT void JNICALL Java_nV_VarPtr__1destroy
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _newKey
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newKey__Ljava_lang_String_2
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newKey
     * Signature: (J)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newKey__J
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _newSymbol
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newSymbol__Ljava_lang_String_2
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newSymbol
     * Signature: (JLjava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newSymbol__JLjava_lang_String_2
    (JNIEnv *, jclass, jlong, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newTuple
     * Signature: ([J)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newTuple
    (JNIEnv *, jclass, jlongArray);

    /*
     * Class:     nV_VarPtr
     * Method:    _newInteger
     * Signature: (J)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newInteger__J
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _newInteger
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newInteger__Ljava_lang_String_2
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newRational
     * Signature: (JJ)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newRational__JJ
    (JNIEnv *, jclass, jlong, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _newRational
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newRational__Ljava_lang_String_2
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newReal
     * Signature: (D)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newReal__D
    (JNIEnv *, jclass, jdouble);

    /*
     * Class:     nV_VarPtr
     * Method:    _newReal
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newReal__Ljava_lang_String_2
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newString
     * Signature: (Ljava/lang/String;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newString
    (JNIEnv *, jclass, jstring);

    /*
     * Class:     nV_VarPtr
     * Method:    _newJavaObject
     * Signature: (Ljava/lang/Object;)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1newJavaObject
    (JNIEnv *, jclass, jobject);

    /*
     * Class:     nV_VarPtr
     * Method:    _type
     * Signature: (J)I
     */
    JNIEXPORT jint JNICALL Java_nV_VarPtr__1type
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _getSymbol
     * Signature: (J)Ljava/lang/String;
     */
    JNIEXPORT jstring JNICALL Java_nV_VarPtr__1getSymbol
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _getBigInteger
     * Signature: (J)Ljava/math/BigInteger;
     */
    JNIEXPORT jobject JNICALL Java_nV_VarPtr__1getBigInteger
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _getBigDecimal
     * Signature: (J)Ljava/math/BigDecimal;
     */
    JNIEXPORT jobject JNICALL Java_nV_VarPtr__1getBigDecimal
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _getString
     * Signature: (J)Ljava/lang/String;
     */
    JNIEXPORT jstring JNICALL Java_nV_VarPtr__1getString
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _getJavaObject
     * Signature: (J)Ljava/lang/Object;
     */
    JNIEXPORT jobject JNICALL Java_nV_VarPtr__1getJavaObject
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _tuple
     * Signature: (J)[J
     */
    JNIEXPORT jlongArray JNICALL Java_nV_VarPtr__1tuple
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _toString
     * Signature: (J)Ljava/lang/String;
     */
    JNIEXPORT jstring JNICALL Java_nV_VarPtr__1toString
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _hashCode
     * Signature: (J)I
     */
    JNIEXPORT jint JNICALL Java_nV_VarPtr__1hashCode
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _clone
     * Signature: (J)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1clone
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _equals
     * Signature: (JJ)Z
     */
    JNIEXPORT jboolean JNICALL Java_nV_VarPtr__1equals
    (JNIEnv *, jclass, jlong, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _compare
     * Signature: (JJ)I
     */
    JNIEXPORT jint JNICALL Java_nV_VarPtr__1compare
    (JNIEnv *, jclass, jlong, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _primary
     * Signature: (J)I
     */
    JNIEXPORT jint JNICALL Java_nV_VarPtr__1primary
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _head
     * Signature: (J)J
     */
    JNIEXPORT jlong JNICALL Java_nV_VarPtr__1head
    (JNIEnv *, jclass, jlong);

    /*
     * Class:     nV_VarPtr
     * Method:    _toDouble
     * Signature: (J)D
     */
    JNIEXPORT jdouble JNICALL Java_nV_VarPtr__1toDouble
    (JNIEnv *, jclass, jlong);

#ifdef __cplusplus
}
#endif
#endif
