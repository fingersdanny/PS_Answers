import java.util.ArrayList;

class Solution {
    public int[] solution(int n, int[] numlist) {
        ArrayList<Integer> result = new ArrayList<>();
        for (int i = 0; i < numlist.length; i++) { 
            if (numlist[i] % n == 0) {
                result.add(numlist[i]);
            }
        }
        int[] answer = new int[result.size()];
        for (int i = 0; i < result.size(); i++) {
            answer[i] = result.get(i);
        }
        return answer;
    }
}