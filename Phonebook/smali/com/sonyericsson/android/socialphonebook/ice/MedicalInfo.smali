.class public Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;
.super Ljava/lang/Object;
.source "MedicalInfo.java"


# instance fields
.field private mAdditionalInformation:Ljava/lang/String;

.field private mAllergies:Ljava/lang/String;

.field private mDonor:Ljava/lang/String;

.field private mMedication:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "allergies"    # Ljava/lang/String;
    .param p2, "medication"    # Ljava/lang/String;
    .param p3, "donor"    # Ljava/lang/String;
    .param p4, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAllergies:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mMedication:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mDonor:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAdditionalInformation:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdditionalInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAdditionalInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getAllergies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAllergies:Ljava/lang/String;

    return-object v0
.end method

.method public getDonor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mDonor:Ljava/lang/String;

    return-object v0
.end method

.method public getMedication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mMedication:Ljava/lang/String;

    return-object v0
.end method

.method public isDataEmpty()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAllergies:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mMedication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mDonor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->mAdditionalInformation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
