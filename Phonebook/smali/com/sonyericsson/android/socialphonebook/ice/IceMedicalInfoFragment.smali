.class public Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;
.super Landroid/app/Fragment;
.source "IceMedicalInfoFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;,
        Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;
    }
.end annotation


# static fields
.field private static final MEDICAL_INFORMATION_LOADER:I = 0xbea


# instance fields
.field private mAdditionalInfo:Landroid/widget/EditText;

.field private mAllergiesView:Landroid/widget/EditText;

.field private mDonor:Landroid/widget/EditText;

.field private mHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

.field private mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

.field private mMedication:Landroid/widget/EditText;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V
    .locals 0
    .param p1, "medicalInfo"    # Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->updateMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private hasChanged()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 138
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "allergies":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "medication":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "donor":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "additionalInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    if-nez v6, :cond_2

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v5

    .line 145
    goto :goto_0

    .line 148
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAllergies()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getMedication()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    if-eqz v6, :cond_3

    .line 150
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getDonor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    if-eqz v6, :cond_3

    .line 150
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    if-eqz v6, :cond_3

    :goto_1
    return v4

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private updateMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V
    .locals 2
    .param p1, "medicalInfo"    # Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAllergies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getMedication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getDonor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    return-void
.end method


# virtual methods
.method public doSaveAction()V
    .locals 4

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->hasChanged()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "data1"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "data2"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "data3"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "data4"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/ContactSaveService;->createUpdateMedicalInfoIntent(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;

    .line 77
    const/16 v3, 0xbea

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 74
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    .line 95
    return-void

    .line 100
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    const-class v2, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancelConfirmed()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;->onDiscard()V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->setHasOptionsMenu(Z)V

    .line 69
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$IceMedicalInfoListener;

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 107
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v1, 0x7f0400a2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "mainView":Landroid/view/View;
    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAllergiesView:Landroid/widget/EditText;

    .line 86
    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mMedication:Landroid/widget/EditText;

    .line 87
    const v1, 0x7f0e01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mDonor:Landroid/widget/EditText;

    .line 88
    const v1, 0x7f0e01af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mAdditionalInfo:Landroid/widget/EditText;

    .line 89
    const v1, 0x7f0e01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    const v2, 0x7f09031e

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setHeaderText(I)V

    .line 91
    return-object v0
.end method

.method public onDiscard()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->hasChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;

    move-result-object v0

    .line 175
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 172
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/ice/MedicalInformationCancelDialog;
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment$Listener;->onDiscard()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    const/4 v1, 0x0

    return v1

    .line 115
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MEDICAL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    move-result-object v0

    .line 116
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    return v1

    .line 112
    :pswitch_data_0
    .packed-switch 0x7f0e025f
        :pswitch_0
    .end packed-switch
.end method
