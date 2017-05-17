.class public Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;
.super Landroid/widget/LinearLayout;
.source "IceMedicalInformationContainer.java"


# instance fields
.field private mAdditionalInfoContent:Landroid/widget/TextView;

.field private mAdditionalInfoView:Landroid/view/View;

.field private mAllergiesContent:Landroid/widget/TextView;

.field private mAllergiesView:Landroid/view/View;

.field private mDonorContent:Landroid/widget/TextView;

.field private mDonorView:Landroid/view/View;

.field private mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

.field private mHasContactName:Z

.field private mIsLockscreenMode:Z

.field private mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

.field private mMedicationContent:Landroid/widget/TextView;

.field private mMedicationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private showEmptyView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 95
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    const v2, 0x7f0d00ac

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    .local v0, "mininumHeight":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMinimumHeight(I)V

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->isMedicalInfoEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mHasContactName:Z

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->isMedicalInfoEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mHasContactName:Z

    .line 100
    if-eqz v1, :cond_2

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    .line 103
    const v2, 0x7f09031b

    .line 102
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMajorText(I)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    .line 106
    const v2, 0x7f09031c

    .line 104
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMinorText(I)V

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    const v2, 0x7f090319

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMajorText(I)V

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    const v2, 0x7f09031a

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMinorText(I)V

    goto :goto_0
.end method


# virtual methods
.method public isMedicalInfoEmpty()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->isDataEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mIsLockscreenMode:Z

    .line 63
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mHasContactName:Z

    .line 65
    const v0, 0x7f0e019e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setVisibility(I)V

    .line 70
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesView:Landroid/view/View;

    .line 71
    const v0, 0x7f0e01a1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesContent:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationView:Landroid/view/View;

    .line 74
    const v0, 0x7f0e01a4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationContent:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorView:Landroid/view/View;

    .line 77
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorContent:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e01a8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoView:Landroid/view/View;

    .line 80
    const v0, 0x7f0e01aa

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoContent:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public setHasContactName(Z)V
    .locals 0
    .param p1, "hasContactName"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mHasContactName:Z

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->updateView()V

    .line 184
    return-void
.end method

.method public setMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V
    .locals 0
    .param p1, "medicalInfo"    # Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->updateView()V

    .line 127
    return-void
.end method

.method public switchToLockScreenMode()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mIsLockscreenMode:Z

    .line 87
    return-void
.end method

.method public updateView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfo(Landroid/content/Context;)Z

    move-result v3

    .line 138
    .local v3, "isMedicalInformationEnabled":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->isMedicalInfoEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 144
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mEmptyContainer:Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setVisibility(I)V

    .line 147
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAllergies()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "allergies":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesContent:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getMedication()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "medication":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationContent:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getDonor()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "donor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 165
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorContent:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "additional":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 173
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoContent:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_3
    return-void

    .line 139
    .end local v0    # "additional":Ljava/lang/String;
    .end local v1    # "allergies":Ljava/lang/String;
    .end local v2    # "donor":Ljava/lang/String;
    .end local v4    # "medication":Ljava/lang/String;
    :cond_0
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mIsLockscreenMode:Z

    if-nez v5, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->showEmptyView()V

    .line 142
    :cond_1
    return-void

    .line 152
    .restart local v1    # "allergies":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 160
    .restart local v4    # "medication":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mMedicationView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 168
    .restart local v2    # "donor":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mDonorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 176
    .restart local v0    # "additional":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->mAdditionalInfoView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
