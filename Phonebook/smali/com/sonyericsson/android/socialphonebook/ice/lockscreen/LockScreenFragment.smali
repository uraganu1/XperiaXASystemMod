.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;
.super Landroid/app/ListFragment;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;,
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;,
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;,
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;
    }
.end annotation


# static fields
.field private static final ICE_CONTACTS_LOADER:I = 0x3e9

.field private static final MEDICAL_INFORMATION_LOADER:I = 0x3ea

.field private static final ONE_PHONE_NUMBER:I = 0x1

.field private static final PROFILE_LOADER:I = 0x3eb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

.field private mEmptyView:Landroid/view/View;

.field private mIceInfoDialog:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

.field private mLockScreenAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

.field private mLockScreenContactsListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;

.field private mLockScreenProfileLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;

.field private mLockscreenMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;

.field private mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

.field private mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

.field private mOwnerContainer:Landroid/widget/LinearLayout;

.field private mOwnerView:Landroid/widget/RelativeLayout;

.field private mShowEmptyView:Z

.field private mShowMedicalInfo:Z

.field private mUserCanCall:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenProfileLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockscreenMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mShowMedicalInfo:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mShowEmptyView:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showContactsView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showEmptyViewIfNeeded()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showMedicalInformation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V
    .locals 0
    .param p1, "myself"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->updateMyself(Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private initHeaders()V
    .locals 6

    .prologue
    const v5, 0x7f040098

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListView:Landroid/widget/ListView;

    .line 139
    const v1, 0x7f04009e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    const v2, 0x7f09031f

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setHeaderText(I)V

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    const v1, 0x7f04009d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerView:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    const v1, 0x7f0400a1

    .line 153
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->switchToLockScreenMode()V

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    const v2, 0x7f09031d

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setHeaderText(I)V

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 134
    return-void
.end method

.method private showCallDialog(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;)V
    .locals 6
    .param p1, "contactData"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    .prologue
    const/4 v5, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 248
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 250
    .local v2, "prev":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 253
    :cond_0
    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 257
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v4

    .line 256
    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;

    move-result-object v0

    .line 258
    .local v0, "callDialog":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 259
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method private showContactsView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mContactsHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setVisibility(I)V

    .line 179
    return-void
.end method

.method private showEmptyViewIfNeeded()V
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mShowEmptyView:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIceInfoDialog(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)V
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/TransactionSafeActivity;

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenActivity;

    .line 235
    .local v0, "activity":Lcom/android/contacts/activities/TransactionSafeActivity;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mIceInfoDialog:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mIceInfoDialog:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->dismiss()V

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mIceInfoDialog:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mIceInfoDialog:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 224
    :cond_1
    return-void

    .line 229
    .end local v0    # "activity":Lcom/android/contacts/activities/TransactionSafeActivity;
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string/jumbo v3, " is not instance of TransactionSafeActivity!"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private showMedicalInformation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoHeader:Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setVisibility(I)V

    .line 184
    return-void
.end method

.method private updateMyself(Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;)V
    .locals 9
    .param p1, "myself"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .prologue
    .line 348
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e0197

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 349
    .local v7, "contactName":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mOwnerView:Landroid/widget/RelativeLayout;

    .line 350
    const v3, 0x7f0e0194

    .line 349
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 351
    .local v1, "contactImage":Landroid/widget/QuickContactBadge;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 352
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 355
    .local v8, "number":Ljava/lang/CharSequence;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .end local v8    # "number":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    .line 360
    .local v0, "photoManager":Lcom/android/contacts/photomanager/ContactPhotoManager;
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getPhotoId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v4

    .line 361
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 360
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 347
    return-void

    .line 357
    .end local v0    # "photoManager":Lcom/android/contacts/photomanager/ContactPhotoManager;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

    if-eqz v0, :cond_0

    .line 172
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

    .line 169
    return-void

    .line 174
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    const-string/jumbo v2, " must implement LockScreenFragment.Listener"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockscreenMedicalInformationListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenMedicalInfoListener;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenProfileLoaderListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$ProfileLoaderListener;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenContactsListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mShowEmptyView:Z

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const v1, 0x7f04009b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0e0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mEmptyView:Landroid/view/View;

    .line 122
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NOT_VOICE_CAPABLE_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showIceInfoDialog(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)V

    .line 196
    return-void

    .line 200
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mUserCanCall:Z

    if-nez v2, :cond_1

    .line 201
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->DISABLED_CALL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showIceInfoDialog(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)V

    .line 202
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 207
    .local v1, "positionInAdapter":I
    if-gez v1, :cond_2

    .line 208
    return-void

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    move-result-object v0

    .line 212
    .local v0, "contactData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->hasPhoneNumbers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getPhoneNumbersCount()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 218
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->showCallDialog(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;)V

    .line 192
    :cond_3
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;->onCallPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPhoneNumberSelected(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)V
    .locals 2
    .param p1, "phoneNumberData"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$Listener;->onCallPhoneNumber(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceCanCallFromLockscreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mUserCanCall:Z

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfo(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mShowMedicalInfo:Z

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenContactsListener:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment$LockScreenContactsListener;

    .line 110
    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 113
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->initHeaders()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mLockScreenAdapter:Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    return-void
.end method

.method protected updateMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenFragment;->mMedicalInfoContainer:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInformationContainer;->setMedicalInfo(Lcom/sonyericsson/android/socialphonebook/ice/MedicalInfo;)V

    .line 343
    return-void
.end method
