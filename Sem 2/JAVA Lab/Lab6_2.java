package vsJAVA;

import java.util.Scanner;

class Candidate{
    int candidateId;
    String candidateName;
    int candidateAge;
    float candidateWeight;
    float candidateHeight;

    void getCandidateDetails(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter candidate Id : ");
        candidateId = sc.nextInt();

        System.out.print("Enter candidate Name : ");
        candidateName = sc.next();

        System.out.print("Enter candidate Age : ");
        candidateAge = sc.nextInt();

        System.out.print("Enter candidate Weight : ");
        candidateWeight = sc.nextFloat();

        System.out.print("Enter candidate Height : ");
        candidateHeight = sc.nextFloat();
    }

    void displayCandidateDetails(){
        System.out.println("Candidate Id = " + candidateId);
        System.out.println("Candidate Name = " + candidateName);
        System.out.println("Candidate Age = " + candidateAge);
        System.out.println("Candidate Weight = " + candidateWeight);
        System.out.println("Candidate Height = " + candidateHeight);

    }

}

public class Lab6_2 {
    public static void main(String[] args){
        Candidate c = new Candidate();
        c.getCandidateDetails();
        c.displayCandidateDetails();
    }
}