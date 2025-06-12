#include "unity.h"
#include "adder.h"

void setUp(void) {
    // 每個測試前會自動呼叫
}

void tearDown(void) {
    // 每個測試後會自動呼叫
}

void test_add_positive_numbers(void) {
    TEST_ASSERT_EQUAL_INT(5, add(2, 3));
}

void test_add_negative_numbers(void) {
    TEST_ASSERT_EQUAL_INT(-5, add(-2, -3));
}

void test_add_mixed_sign_numbers(void) {
    TEST_ASSERT_EQUAL_INT(1, add(3, -2));
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_add_positive_numbers);
    RUN_TEST(test_add_negative_numbers);
    RUN_TEST(test_add_mixed_sign_numbers);
    return UNITY_END();
}

