package com.assessment.data;

import java.util.Arrays;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.dozer.Mapping;
/**
 * pk - email & companyId
 * @author jsutaria
 *
 */
@Entity
public class User extends Base{
	@NotNull
	@Column(length=2000)
	 String email;
	 String mobileNumber;
	 String firstName;
	 String lastName;
	 @NotNull
	 String password;
	 String department;
	@Enumerated(EnumType.STRING)
	private UserType userType = UserType.STUDENT;
	
	String groupOfUser;
	
	String grade;
	
	Boolean internalUser;
	
	@Transient
	private String type;
	
	@Transient
	Boolean selected;
	
	String aadharNo;
	
	String dateOfBirth;
	
	String gender = "Male";
	
	@Column(length=1000)
	String permanentAddress;
	
	@Column(length=1000)
	String addressCommunication;
	
	String collegeName;
	
	String tenPercentage;
	
	String tenYearOfPassing;
	
	String twelveDiplomaPercentage;
	
	String twelveDiplomaYearOfPassing;
	
	String underGradDegree;
	
	String underGradDegreeSpec;
	
	String underGradYearOfPassing;
	
	String underGradPercentage;
	
	String postGradDegree;
	
	String postGradDegreeSpec;
	
	String postGradYearOfPassing;
	
	String postGradPercentage;
	
	String activeBackLogs;
	@Transient
	String transientPassword;
	
	String otp;
	
	/**
	 * comma separated
	 */
	@Column(length=5000)
	String licenses;
	
	String degree;
	
	String passingYear;
	
	
	@Mapping("this")
	@Transient
	List<String> lic;
	
	String classifier;
	
	@Column(length=500)
	String candidateId;
	
	String recruitmentCompanyName;
	
	
	public String getRecruitmentCompanyName() {
		return recruitmentCompanyName;
	}
	public void setRecruitmentCompanyName(String recruitmentCompanyName) {
		this.recruitmentCompanyName = recruitmentCompanyName;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getPassingYear() {
		return passingYear;
	}
	public void setPassingYear(String passingYear) {
		this.passingYear = passingYear;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public UserType getUserType() {
		return userType;
	}
	public void setUserType(UserType userType) {
		this.userType = userType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getInternalUser() {
		return internalUser;
	}
	public void setInternalUser(Boolean internalUser) {
		this.internalUser = internalUser;
	}
	
	
	public String getGroupOfUser() {
		return groupOfUser;
	}
	public void setGroupOfUser(String groupOfUser) {
		this.groupOfUser = groupOfUser;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getType() {
		return getUserType().getType();
	}
	public void setType(String type) {
		this.type = type;
		setUserType(UserType.valueOf(type));
	}
	public Boolean getSelected() {
		return selected;
	}
	public void setSelected(Boolean selected) {
		this.selected = selected;
	}
	
	@Override
	public int hashCode() {
			if(getId() == null) {
				return (getEmail()+getCompanyId()).hashCode();
			}
		return getId().hashCode();
	}
	
	@Override
	public boolean equals(Object object) {
		if(! (object instanceof User)) {
			return false;
		}
		
		User dto = (User) object;
		if(dto.hashCode() == hashCode()) {
			return true;
		}
		
		return false;
	}
	public String getAadharNo() {
		return aadharNo;
	}
	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	public String getAddressCommunication() {
		return addressCommunication;
	}
	public void setAddressCommunication(String addressCommunication) {
		this.addressCommunication = addressCommunication;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getTenPercentage() {
		return tenPercentage;
	}
	public void setTenPercentage(String tenPercentage) {
		this.tenPercentage = tenPercentage;
	}
	public String getTenYearOfPassing() {
		return tenYearOfPassing;
	}
	public void setTenYearOfPassing(String tenYearOfPassing) {
		this.tenYearOfPassing = tenYearOfPassing;
	}
	public String getTwelveDiplomaPercentage() {
		return twelveDiplomaPercentage;
	}
	public void setTwelveDiplomaPercentage(String twelveDiplomaPercentage) {
		this.twelveDiplomaPercentage = twelveDiplomaPercentage;
	}
	public String getTwelveDiplomaYearOfPassing() {
		return twelveDiplomaYearOfPassing;
	}
	public void setTwelveDiplomaYearOfPassing(String twelveDiplomaYearOfPassing) {
		this.twelveDiplomaYearOfPassing = twelveDiplomaYearOfPassing;
	}
	public String getUnderGradDegree() {
		return underGradDegree;
	}
	public void setUnderGradDegree(String underGradDegree) {
		this.underGradDegree = underGradDegree;
	}
	public String getUnderGradDegreeSpec() {
		return underGradDegreeSpec;
	}
	public void setUnderGradDegreeSpec(String underGradDegreeSpec) {
		this.underGradDegreeSpec = underGradDegreeSpec;
	}
	public String getUnderGradYearOfPassing() {
		return underGradYearOfPassing;
	}
	public void setUnderGradYearOfPassing(String underGradYearOfPassing) {
		this.underGradYearOfPassing = underGradYearOfPassing;
	}
	public String getUnderGradPercentage() {
		return underGradPercentage;
	}
	public void setUnderGradPercentage(String underGradPercentage) {
		this.underGradPercentage = underGradPercentage;
	}
	public String getPostGradDegree() {
		return postGradDegree;
	}
	public void setPostGradDegree(String postGradDegree) {
		this.postGradDegree = postGradDegree;
	}
	public String getPostGradDegreeSpec() {
		return postGradDegreeSpec;
	}
	public void setPostGradDegreeSpec(String postGradDegreeSpec) {
		this.postGradDegreeSpec = postGradDegreeSpec;
	}
	public String getPostGradYearOfPassing() {
		return postGradYearOfPassing;
	}
	public void setPostGradYearOfPassing(String postGradYearOfPassing) {
		this.postGradYearOfPassing = postGradYearOfPassing;
	}
	public String getPostGradPercentage() {
		return postGradPercentage;
	}
	public void setPostGradPercentage(String postGradPercentage) {
		this.postGradPercentage = postGradPercentage;
	}
	public String getActiveBackLogs() {
		return activeBackLogs;
	}
	public void setActiveBackLogs(String activeBackLogs) {
		this.activeBackLogs = activeBackLogs;
	}
	public String getTransientPassword() {
		return transientPassword;
	}
	public void setTransientPassword(String transientPassword) {
		this.transientPassword = transientPassword;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	public String getLicenses() {
		return licenses;
	}
	public void setLicenses(String licenses) {
		this.licenses = licenses;
	}
	
	
	public List<String> getLic() {
		if(getLicenses() != null && getLicenses().trim().length() > 0){
			String[] elements = getLicenses().split(",");
				for(String s: elements){
					s = s.trim();
				}
			List<String> fixedLenghtList = Arrays.asList(elements);
			return fixedLenghtList;
		}
	return lic;
	}
	
	public void setLic(List<String> lics) {
		this.lic = lics;
			if(lics != null && lics.size() != 0){
				 String string = String.join(",", lics);  
				 setLicenses(string);
			}
	}
	public String getClassifier() {
		return classifier;
	}
	public void setClassifier(String classifier) {
		this.classifier = classifier;
	}
	public String getCandidateId() {
		return candidateId;
	}
	public void setCandidateId(String candidateId) {
		this.candidateId = candidateId;
	}
	
	
	

}
