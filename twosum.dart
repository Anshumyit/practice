List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numMap = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }

    numMap[nums[i]] = i;
   
  }

  throw Exception('No two sum solution');
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  List<int> result = twoSum(nums, target);

  print(result); // Output: [0, 1]
}
