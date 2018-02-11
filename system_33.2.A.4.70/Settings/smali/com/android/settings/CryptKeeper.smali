.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;,
        Lcom/android/settings/CryptKeeper$1;,
        Lcom/android/settings/CryptKeeper$2;,
        Lcom/android/settings/CryptKeeper$3;,
        Lcom/android/settings/CryptKeeper$4;
    }
.end annotation


# instance fields
.field private mActivePhoneIdList:Ljava/util/ArrayList;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private mFailedAttempts:I

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsReceiverRegistered:Z

.field private mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNoEmgCallsOnly:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

.field private mReleaseWakeLockCountdown:I

.field private mScreenInitializationDone:Z

.field mShowSimState:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mScreenInitializationDone:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p1, "corrupt"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/CryptKeeper;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->updateRadioInfoText(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;Z)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Integer;
    .param p2, "cooldownNeeded"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 156
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 158
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 159
    const v0, 0x7f0b08b8

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 169
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 180
    iput v1, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mScreenInitializationDone:Z

    .line 185
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 193
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mNoEmgCallsOnly:Z

    .line 384
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 823
    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    .line 822
    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 1189
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mIsReceiverRegistered:Z

    .line 103
    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 271
    const v1, 0x7f130069

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0b08be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    return-void
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 801
    :cond_1
    const v1, 0x7f130069

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 802
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0b029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 792
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 1151
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1150
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1183
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1184
    .local v0, "name":Landroid/content/ComponentName;
    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v2, 0x2

    .line 1186
    const/4 v3, 0x1

    .line 1185
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1181
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 688
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 690
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 692
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "CryptKeeper"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 693
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 696
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f130068

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 698
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 701
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 684
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    .line 819
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1015
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1016
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 1018
    :cond_0
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1144
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1140
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;Z)V

    .line 275
    return-void
.end method

.method private handleBadAttempt(Ljava/lang/Integer;Z)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;
    .param p2, "cooldownNeeded"    # Z

    .prologue
    .line 281
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v9, :cond_0

    .line 282
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 283
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x5dc

    invoke-virtual {v9, v10, v12, v13}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    if-nez v9, :cond_2

    .line 287
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 290
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_4

    .line 292
    const v9, 0x7f130069

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 294
    .local v5, "status":Landroid/widget/TextView;
    const v9, 0x7f0b0c70

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 296
    .local v6, "template":Ljava/lang/CharSequence;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 298
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x1e

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 296
    invoke-static {v6, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v9, :cond_3

    .line 302
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 304
    :cond_3
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v9, :cond_1

    .line 305
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 308
    .end local v5    # "status":Landroid/widget/TextView;
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_4
    const v9, 0x7f130069

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 310
    .restart local v5    # "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    rsub-int/lit8 v3, v9, 0x1e

    .line 311
    .local v3, "remainingAttempts":I
    const/16 v9, 0xa

    if-ge v3, v9, :cond_6

    .line 312
    const v9, 0x7f0b02a0

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 313
    .local v8, "warningTemplate":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 313
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 315
    .local v7, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .end local v7    # "warning":Ljava/lang/CharSequence;
    .end local v8    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v9, :cond_5

    .line 335
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 336
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 340
    :cond_5
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v9, :cond_1

    .line 341
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 343
    const-string/jumbo v9, "input_method"

    .line 342
    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 345
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    goto/16 :goto_0

    .line 317
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    const/4 v2, 0x0

    .line 319
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 320
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v9, 0x3

    if-ne v2, v9, :cond_7

    .line 326
    const v9, 0x7f0b08bd

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error calling mount service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    .line 328
    const v9, 0x7f0b08bb

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 330
    :cond_8
    const v9, 0x7f0b08bc

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 974
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 977
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 979
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 981
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 983
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 985
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 986
    add-int/lit8 v2, v2, 0x1

    .line 987
    goto :goto_0

    .line 990
    :cond_2
    const/4 v0, 0x0

    .line 991
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 992
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 996
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 1001
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 1002
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1003
    goto :goto_0

    .line 1007
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 1010
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 1007
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 1010
    goto :goto_2
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isNoImsi()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1357
    const-string/jumbo v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "simstate":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1359
    return v4

    .line 1361
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, "simstates":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v1, v3

    .line 1363
    .local v2, "state":Ljava/lang/String;
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1364
    const-string/jumbo v6, "NOT_READY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1362
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1365
    :cond_2
    const-string/jumbo v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1366
    return v4

    .line 1369
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private isPatternLockType()Z
    .locals 7

    .prologue
    .line 1227
    const/4 v1, 0x0

    .line 1229
    .local v1, "isPatternType":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1230
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 1231
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v3

    .line 1232
    .local v3, "type":I
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 1237
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 1232
    .restart local v2    # "service":Landroid/os/storage/IMountService;
    .restart local v3    # "type":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1234
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CryptKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error calling mount service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isShowNoServiceSimStatusForPINAndPUK()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1341
    const-string/jumbo v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "simstate":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1343
    return v4

    .line 1345
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, "simstates":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v1, v3

    .line 1347
    .local v2, "state":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1348
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1347
    if-nez v6, :cond_1

    .line 1349
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1347
    if-eqz v6, :cond_2

    .line 1350
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 1346
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1353
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1135
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1136
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1131
    return-void
.end method

.method private listenPhoneStateBroadcast(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1212
    new-instance v1, Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    .line 1213
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1211
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 428
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 429
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Counting down to notify user..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 445
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 448
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 450
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 427
    :cond_1
    :goto_1
    return-void

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 432
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Notifying user that we are waiting for input..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 18

    .prologue
    .line 851
    const-string/jumbo v13, "CryptKeeper"

    const-string/jumbo v14, "passwordEntryInit()."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const v13, 0x7f130066

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v13, :cond_0

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 864
    :cond_0
    const v13, 0x7f130051

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v13, :cond_1

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 870
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v13

    if-nez v13, :cond_2

    .line 871
    const v13, 0x7f130065

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 872
    .local v3, "emergencyCall":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 873
    const-string/jumbo v13, "CryptKeeper"

    const-string/jumbo v14, "Removing the emergency Call button"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 878
    .end local v3    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v13, 0x7f130072

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 880
    .local v5, "imeSwitcher":Landroid/view/View;
    const-string/jumbo v13, "input_method"

    .line 879
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 881
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeper;->isPatternLockType()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 895
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v13, :cond_4

    .line 896
    const-string/jumbo v13, "CryptKeeper"

    const-string/jumbo v14, "Acquiring wakelock."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 898
    .local v9, "pm":Landroid/os/PowerManager;
    if-eqz v9, :cond_4

    .line 899
    const-string/jumbo v13, "CryptKeeper"

    const/16 v14, 0x1a

    invoke-virtual {v9, v14, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 903
    const/16 v13, 0x60

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 909
    .end local v9    # "pm":Landroid/os/PowerManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-eqz v13, :cond_9

    .line 917
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 919
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v14, 0x1d4c0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/high16 v14, 0x480000

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 927
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    const/4 v14, 0x5

    if-le v13, v14, :cond_a

    .line 928
    const v13, 0x7f130069

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 930
    .local v11, "status":Landroid/widget/TextView;
    const v13, 0x7f0b0c70

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 932
    .local v12, "template":Ljava/lang/CharSequence;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 933
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    rsub-int/lit8 v14, v14, 0x1e

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 932
    invoke-static {v12, v13}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    .end local v11    # "status":Landroid/widget/TextView;
    .end local v12    # "template":Ljava/lang/CharSequence;
    :cond_6
    :goto_2
    const-string/jumbo v13, "CryptKeeper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "passwordEntryInit() mShowSimState = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/CryptKeeper;->mShowSimState:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeper;->mShowSimState:Z

    if-eqz v13, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 850
    :cond_7
    :goto_3
    return-void

    .line 882
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v13

    .line 881
    if-eqz v13, :cond_3

    .line 883
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 884
    new-instance v13, Lcom/android/settings/CryptKeeper$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 910
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/settings/CryptKeeper$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/android/settings/CryptKeeper$9;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    .line 914
    const-wide/16 v16, 0x0

    .line 910
    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 934
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    if-lez v13, :cond_6

    .line 935
    const v13, 0x7f130069

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 936
    .restart local v11    # "status":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 938
    .local v8, "passwordType":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v10

    .line 939
    .local v10, "service":Landroid/os/storage/IMountService;
    invoke-interface {v10}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 943
    .end local v10    # "service":Landroid/os/storage/IMountService;
    :goto_4
    const/4 v13, 0x3

    if-ne v8, v13, :cond_b

    .line 944
    const v13, 0x7f0b08bd

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 940
    :catch_0
    move-exception v2

    .line 941
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "CryptKeeper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error calling mount service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 945
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v13, 0x2

    if-ne v8, v13, :cond_c

    .line 946
    const v13, 0x7f0b08bb

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 948
    :cond_c
    const v13, 0x7f0b08bc

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 953
    .end local v8    # "passwordType":I
    .end local v11    # "status":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeper;->mIsReceiverRegistered:Z

    if-nez v13, :cond_7

    .line 954
    new-instance v4, Landroid/content/IntentFilter;

    .line 955
    const-string/jumbo v13, "com.sonymobile.intent.action.EMERGENCY_CALL_SUPPORTED_CHANGED"

    .line 954
    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 956
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/android/settings/CryptKeeper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 958
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_e

    .line 959
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/CryptKeeper;->updateRadioInfoText(Landroid/content/Intent;)V

    .line 961
    :cond_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/CryptKeeper;->mIsReceiverRegistered:Z

    goto/16 :goto_3
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1068
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    .line 1069
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1070
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Going into airplane mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1072
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1066
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1068
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isLteDevice":Z
    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 810
    if-eqz p1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 809
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private setupUi()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f04003d

    const/16 v3, 0x400

    .line 546
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mScreenInitializationDone:Z

    if-nez v2, :cond_0

    .line 547
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 554
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 556
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 557
    return-void

    .line 560
    :cond_2
    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "progress":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    .line 545
    :cond_4
    :goto_0
    return-void

    .line 564
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_6

    const-string/jumbo v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 565
    :cond_6
    new-instance v1, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 624
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_4

    .line 626
    new-instance v2, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$ValidationTask;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 627
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(Z)V
    .locals 7
    .param p1, "corrupt"    # Z

    .prologue
    const v6, 0x7f130069

    const v5, 0x7f130043

    const/4 v4, 0x0

    .line 712
    const v2, 0x7f13006a

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 715
    const v2, 0x7f13006b

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 716
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 717
    new-instance v2, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    if-eqz p1, :cond_1

    .line 731
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b02a4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 732
    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b02a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 738
    :goto_0
    const v2, 0x7f13006c

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 740
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_0
    return-void

    .line 734
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b02a2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 735
    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b02a3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1122
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick Button telecomManager.isInCall() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1120
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 4

    .prologue
    .line 1085
    const v2, 0x7f130065

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1087
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1090
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1092
    new-instance v2, Lcom/android/settings/CryptKeeper$10;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$10;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1107
    const v1, 0x7f0b0954

    .line 1108
    .local v1, "textId":I
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "show cryptkeeper_return_to_call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1084
    return-void

    .line 1100
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1101
    return-void

    .line 1110
    :cond_2
    const v1, 0x7f0b0953

    .line 1111
    .restart local v1    # "textId":I
    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "show cryptkeeper_emergency_call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 746
    const-string/jumbo v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 749
    invoke-direct {p0, v11}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 750
    return-void

    .line 754
    :cond_0
    const v8, 0x7f0b029d

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 755
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 758
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 762
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "progress":Ljava/lang/String;
    const-string/jumbo v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_1
    const-string/jumbo v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 768
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 769
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 771
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 772
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 773
    const v8, 0x7f0b029e

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 779
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_1
    const v8, 0x7f130069

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 780
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 781
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :cond_2
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    return-void

    .line 758
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 775
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private updateRadioInfoText(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1241
    const-string/jumbo v10, "CryptKeeper"

    const-string/jumbo v11, "updateRadioInfoText() Start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const v10, 0x7f13006d

    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1243
    .local v6, "radioInfo":Landroid/widget/TextView;
    if-nez v6, :cond_0

    .line 1244
    return-void

    .line 1247
    :cond_0
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 1248
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    .line 1250
    :cond_1
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    .line 1251
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    .line 1254
    :cond_2
    const v4, 0x1040275

    .line 1255
    .local v4, "noServiceId":I
    if-eqz p1, :cond_4

    .line 1256
    const-string/jumbo v10, "phone"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1258
    .local v5, "phoneId":I
    const-string/jumbo v10, "emergency_call_supported"

    const/4 v11, 0x0

    .line 1257
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1260
    .local v2, "isEmergencySupported":Z
    const-string/jumbo v10, "rat"

    const/4 v11, 0x0

    .line 1259
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1261
    .local v7, "rat":I
    const-string/jumbo v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRadioInfoText() isEmergencySupported = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1262
    const-string/jumbo v12, " rat = "

    .line 1261
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/16 v10, 0xe

    if-ne v7, v10, :cond_3

    if-eqz v2, :cond_6

    .line 1270
    :cond_3
    if-eqz v2, :cond_7

    .line 1271
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1272
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    .end local v2    # "isEmergencySupported":Z
    .end local v5    # "phoneId":I
    .end local v7    # "rat":I
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    const-string/jumbo v10, "android.intent.action.SERVICE_STATE"

    .line 1279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 1278
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1280
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v8

    .line 1281
    .local v8, "ss":Landroid/telephony/ServiceState;
    const-string/jumbo v10, "subscription"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1282
    .local v9, "subId":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1283
    .restart local v5    # "phoneId":I
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v10

    .line 1284
    const/16 v11, 0xd

    .line 1283
    if-ne v10, v11, :cond_8

    .line 1285
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1286
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    .end local v5    # "phoneId":I
    .end local v8    # "ss":Landroid/telephony/ServiceState;
    .end local v9    # "subId":I
    :cond_5
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-boolean v10, p0, Lcom/android/settings/CryptKeeper;->mNoEmgCallsOnly:Z

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isShowNoServiceSimStatusForPINAndPUK()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1298
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1299
    return-void

    .line 1266
    .restart local v2    # "isEmergencySupported":Z
    .restart local v5    # "phoneId":I
    .restart local v7    # "rat":I
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1267
    return-void

    .line 1274
    :cond_7
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1275
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1289
    .end local v2    # "isEmergencySupported":Z
    .end local v7    # "rat":I
    .restart local v8    # "ss":Landroid/telephony/ServiceState;
    .restart local v9    # "subId":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1290
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1302
    .end local v5    # "phoneId":I
    .end local v8    # "ss":Landroid/telephony/ServiceState;
    .end local v9    # "subId":I
    :cond_9
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v1, 0x0

    .line 1303
    .local v1, "isECSupportedByNetwork":Z
    :goto_2
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    .line 1304
    .local v0, "isECSupportedByDevice":Z
    iget-object v10, p0, Lcom/android/settings/CryptKeeper;->mLTEAttachedPhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v3, 0x0

    .line 1305
    .local v3, "isLTEAttached":Z
    :goto_3
    const-string/jumbo v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRadioInfoText isECSupportedByNetwork = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string/jumbo v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRadioInfoText isECSupportedByDevice = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string/jumbo v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRadioInfoText isLTEAttached = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isNoImsi()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1309
    iget-boolean v10, p0, Lcom/android/settings/CryptKeeper;->mNoEmgCallsOnly:Z

    if-eqz v10, :cond_c

    .line 1310
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1311
    return-void

    .line 1302
    .end local v0    # "isECSupportedByDevice":Z
    .end local v1    # "isECSupportedByNetwork":Z
    .end local v3    # "isLTEAttached":Z
    :cond_a
    const/4 v1, 0x1

    .restart local v1    # "isECSupportedByNetwork":Z
    goto :goto_2

    .line 1304
    .restart local v0    # "isECSupportedByDevice":Z
    :cond_b
    const/4 v3, 0x1

    .restart local v3    # "isLTEAttached":Z
    goto :goto_3

    .line 1313
    :cond_c
    if-eqz v1, :cond_d

    .line 1314
    const v10, 0x104028d

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1315
    return-void

    .line 1317
    :cond_d
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1318
    return-void

    .line 1323
    :cond_e
    if-eqz v1, :cond_11

    .line 1324
    if-eqz v3, :cond_10

    .line 1325
    if-eqz v0, :cond_f

    .line 1326
    const v10, 0x104028d

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1240
    :goto_4
    return-void

    .line 1328
    :cond_f
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1331
    :cond_10
    const v10, 0x104028d

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1333
    :cond_11
    if-eqz v3, :cond_12

    .line 1334
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1336
    :cond_12
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1168
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 468
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "trigger_restart_framework"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    :cond_0
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 481
    return-void

    .line 485
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_2
    :goto_0
    const-string/jumbo v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 494
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v5, 0x3370000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 496
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 497
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 500
    .local v1, "lastInstance":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v4, :cond_3

    move-object v2, v1

    .line 501
    check-cast v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 502
    .local v2, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v4, v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 503
    iget v4, v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->failedAttempts:I

    iput v4, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    .line 504
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Restoring wakelock + failed attempts from NonConfigurationInstanceState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v2    # "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v5, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 524
    const-string/jumbo v4, "ro.telephony.check_sim_state"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mShowSimState:Z

    .line 525
    const-string/jumbo v4, "ro.telephony.no_emg_calls_only"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mNoEmgCallsOnly:Z

    .line 466
    return-void

    .line 488
    .end local v1    # "lastInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 657
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 659
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 665
    :cond_0
    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 655
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1023
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 1025
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    return v4

    .line 1032
    :cond_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1037
    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 1040
    new-instance v1, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DecryptTask;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1046
    :goto_0
    return v4

    .line 1043
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_0

    .line 1048
    .end local v0    # "password":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateReceiver:Lcom/android/settings/CryptKeeper$PhoneStateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mActivePhoneIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIsReceiverRegistered:Z

    .line 678
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 670
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 646
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    .line 646
    invoke-direct {v0, v1, v2}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;I)V

    .line 648
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Handing wakelock off and failed attempts to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 650
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mFailedAttempts:I

    .line 651
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 536
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0, p0}, Lcom/android/settings/CryptKeeper;->listenPhoneStateBroadcast(Landroid/app/Activity;)V

    .line 538
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 534
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 633
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 634
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1172
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1163
    const/4 v0, 0x0

    return v0
.end method
