.class public Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;
.super Landroid/app/ListFragment;
.source "IceFragmentList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;,
        Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;,
        Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;,
        Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;
    }
.end annotation


# static fields
.field private static final CONTACTS_LOADER_ID:I = 0xbe0

.field public static final CONTACTS_PICKER_REQUEST_CODE:I = 0x82a

.field private static final MAX_ICE_CONTACTS:I = 0xa

.field private static final MEDICAL_INFORMATION_DISABLED_ALPHA:F = 0.5f

.field private static final MEDICAL_INFORMATION_ENABLED_ALPHA:F = 1.0f

.field private static final MEDICAL_INFORMATION_LOADER:I = 0xbe2

.field private static final MYSELF_LOADER_ID:I = 0xbe1


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

.field private mCurrentIceContactsCount:I

.field private mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;

.field private mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

.field private mMedicalInfoHeader:Landroid/view/View;

.field private mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

.field private mProfileLoader:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Z)V
    .locals 0
    .param p1, "isPersonalInfoEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->refreshPersonalInformationViews(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->setShowIceOnLockscreenIfNeeded()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Ljava/util/List;)V
    .locals 0
    .param p1, "iceContacts"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->updateIceContacts(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    .line 46
    return-void
.end method

.method private constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "iconId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 197
    const v4, 0x7f0400c9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "result":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 200
    const v5, 0x7f0d00ac

    .line 199
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    .local v1, "mininumHeight":I
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 202
    const v4, 0x7f0e004f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(I)V

    .line 206
    return-object v2
.end method

.method private initContactsHeader(Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x0

    .line 162
    const v1, 0x7f040098

    .line 161
    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    .line 163
    .local v0, "contactHeader":Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;
    const v1, 0x7f09031d

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setHeaderText(I)V

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->initNewContactHeader(Landroid/view/LayoutInflater;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->initUseExistingContactsHeader(Landroid/view/LayoutInflater;)V

    .line 159
    return-void
.end method

.method private initHeaders()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->initMyselfMedicalHeader(Landroid/view/LayoutInflater;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->initContactsHeader(Landroid/view/LayoutInflater;)V

    .line 128
    return-void
.end method

.method private initMyselfMedicalHeader(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 136
    const v2, 0x7f040098

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfoHeader:Landroid/view/View;

    .line 137
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfoHeader:Landroid/view/View;

    const v3, 0x7f0e018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, "headerText":Landroid/widget/TextView;
    const v2, 0x7f09031e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const v2, 0x7f0400a1

    .line 141
    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    .line 145
    const v2, 0x7f0400a3

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    .line 146
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->setId(I)V

    .line 147
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfoHeader:Landroid/view/View;

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfo(Landroid/content/Context;)Z

    move-result v1

    .line 156
    .local v1, "iceShowMedicalInfo":Z
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->setMedicalInfoViewEnabled(Z)V

    .line 134
    return-void
.end method

.method private initNewContactHeader(Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 173
    const v1, 0x7f0200ad

    const v2, 0x7f090316

    .line 172
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, "createContact":Landroid/view/View;
    const v1, 0x7f0e002c

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 175
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method private initUseExistingContactsHeader(Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 182
    const v1, 0x7f020069

    const v2, 0x7f090317

    .line 181
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->constructActionView(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "addContacts":Landroid/view/View;
    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 184
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method private isLimitOfIceContactsExceeded()Z
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private refreshPersonalInformationViews(Z)V
    .locals 1
    .param p1, "isPersonalInfoEnabled"    # Z

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceShowMedicalInfo(Landroid/content/Context;Z)V

    .line 291
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->setMedicalInfoViewEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->updateViews()V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->updateView()V

    .line 289
    return-void
.end method

.method private setMedicalInfoViewEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfoHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setAlpha(F)V

    .line 317
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfoHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMedicalInfo:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setAlpha(F)V

    goto :goto_0
.end method

.method private setShowIceOnLockscreenIfNeeded()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SystemSecurePrefsUtil;->getShowIceInLockscreen(Landroid/content/Context;)I

    move-result v0

    .line 337
    .local v0, "currentValue":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 339
    const/4 v2, 0x1

    .line 338
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SystemSecurePrefsUtil;->setShowIceInLockscreen(Landroid/content/Context;I)V

    .line 335
    :cond_0
    return-void
.end method

.method private showReachedIceContactsLimitToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 448
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 447
    const v3, 0x7f09034b

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    return-void
.end method

.method private updateIceContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "iceContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->setIceContacts(Ljava/util/List;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;

    const/16 v3, 0xbe0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mProfileLoader:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;

    const/16 v3, 0xbe1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;

    .line 107
    const/16 v3, 0xbe2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 99
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 350
    :pswitch_0
    if-eqz p3, :cond_1

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 351
    :cond_1
    return-void

    .line 355
    :cond_2
    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 354
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    .local v0, "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 360
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 361
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .restart local v0    # "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 369
    const/4 v4, 0x1

    .line 368
    invoke-static {v3, v0, v4}, Lcom/android/contacts/ContactSaveService;->createSetIceIntent(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v1

    .line 370
    .local v1, "setIceContacts":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x82a
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;

    move-object v2, v0

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must implement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    const-class v4, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 381
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->isLimitOfIceContactsExceeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->showReachedIceContactsLimitToast()V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v0, "addIceContact":Landroid/content/Intent;
    const-string/jumbo v3, "addContactToIceContacts"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string/jumbo v3, "disable_sim_account"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    .end local v0    # "addIceContact":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->isLimitOfIceContactsExceeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->showReachedIceContactsLimitToast()V

    goto :goto_0

    .line 399
    :cond_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    rsub-int/lit8 v2, v3, 0xa

    .line 400
    .local v2, "receipientNumber":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string/jumbo v3, "contact_only_phone"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string/jumbo v3, "disable_sim_account"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    const-string/jumbo v3, "contact_only_no_ice"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    if-le v2, v5, :cond_2

    .line 407
    const-string/jumbo v3, "isPickMultiContactsWithoutProfile"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    :cond_2
    const-string/jumbo v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const/16 v3, 0x82a

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 414
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "receipientNumber":I
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e002c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onContactEditSelected(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "detailViewIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "detailViewIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    .local v0, "detailViewIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->startActivity(Landroid/content/Intent;)V

    .line 422
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->setHasOptionsMenu(Z)V

    .line 85
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mLoaderManager:Landroid/app/LoaderManager;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mIceLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceContactsLoaderListener;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mProfileLoader:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$ProfileLoader;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mIceMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$IceMedicalInfoListener;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 211
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 210
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v0, 0x7f040097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 301
    .local v1, "positionInAdapter":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 302
    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v0

    .line 306
    .local v0, "contactInfo":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 298
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/TransactionSafeActivity;

    .line 232
    .local v0, "activity":Lcom/android/contacts/activities/TransactionSafeActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 281
    return v8

    .line 235
    :pswitch_0
    const/4 v3, 0x0

    .line 236
    .local v3, "isPersonalInfoEnabled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mMyselfView:Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/ice/MyselfView;->hasContactName()Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    invoke-static {v0, v9}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setShouldShowEnableIceToast(Landroid/content/Context;Z)V

    .line 240
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;

    move-result-object v2

    .line 241
    .local v2, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;
    invoke-virtual {v2, p0, v8}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 245
    .end local v2    # "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceMyselfInfoDialog;
    :cond_0
    return v9

    .line 247
    :cond_1
    const/4 v3, 0x1

    .line 249
    :cond_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->refreshPersonalInformationViews(Z)V

    .line 250
    return v9

    .line 253
    .end local v3    # "isPersonalInfoEnabled":Z
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;

    invoke-direct {v4, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v4, "medicalInfoActivity":Landroid/content/Intent;
    const/16 v7, 0x64

    invoke-virtual {p0, v4, v7}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    return v9

    .line 259
    .end local v4    # "medicalInfoActivity":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;

    move-result-object v5

    .line 262
    .local v5, "removeDialog":Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 265
    .end local v5    # "removeDialog":Lcom/sonyericsson/android/socialphonebook/ice/IceContactRemovalDialog;
    :cond_3
    return v9

    .line 269
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 270
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    move-result-object v1

    .line 271
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 274
    .end local v1    # "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    :cond_4
    return v9

    .line 277
    :pswitch_4
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/sonyericsson/android/socialphonebook/ice/IcePreferencesActivity;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v6, "settings":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->startActivity(Landroid/content/Intent;)V

    .line 279
    return v9

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e025a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 218
    const v5, 0x7f0e025c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 219
    .local v2, "removeContacts":Landroid/view/MenuItem;
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->mCurrentIceContactsCount:I

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfo(Landroid/content/Context;)Z

    move-result v1

    .line 222
    .local v1, "isShowPersonalInfoChecked":Z
    const v4, 0x7f0e025a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 223
    .local v3, "showPersonalInfoMenuItem":Landroid/view/MenuItem;
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 225
    const v4, 0x7f0e025b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 226
    .local v0, "editMedicalInfo":Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 215
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceFragmentList;->initHeaders()V

    .line 123
    return-void
.end method
