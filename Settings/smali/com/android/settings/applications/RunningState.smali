.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$AppProcessInfo;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$1;,
        Lcom/android/settings/applications/RunningState$2;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field mBackgroundProcessSwapMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    .line 109
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 147
    iput v1, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 150
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    .line 149
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 329
    new-instance v0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;)V

    .line 328
    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 788
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 789
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 790
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 791
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 792
    iget v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    .line 793
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 794
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 795
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 796
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 797
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 786
    return-void

    :cond_0
    move v0, v1

    .line 792
    goto :goto_0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 877
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 878
    .local v2, "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 879
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 880
    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 881
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    .line 883
    return-void

    .line 878
    .end local v0    # "first":Z
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "first":Z
    goto :goto_0

    .line 885
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 886
    return-void

    .line 888
    :cond_3
    if-nez v2, :cond_5

    .line 889
    new-instance v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 890
    .restart local v2    # "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 894
    :goto_1
    iget v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 895
    new-instance v3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 896
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 897
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v1}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 898
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 899
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    return-void

    .line 892
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v3, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 778
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 782
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 853
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 854
    return v3

    .line 856
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 857
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 858
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xaa

    if-ge v0, v1, :cond_1

    .line 859
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    .line 861
    return v3

    .line 863
    :cond_1
    return v2
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 761
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    .line 762
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 763
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 764
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 765
    return-object v0

    .line 769
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 770
    .local v1, "label":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 771
    .local v2, "tail":I
    if-ltz v2, :cond_2

    .line 772
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 774
    :cond_2
    return-object v1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 868
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 869
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 871
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 74
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v48

    .line 907
    .local v48, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    add-int/lit8 v69, v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 909
    const/16 v20, 0x0

    .line 914
    .local v20, "changed":Z
    const/16 v69, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v58

    .line 915
    .local v58, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v58, :cond_1

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v11

    .line 916
    .local v11, "NS":I
    :goto_0
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_1
    move/from16 v0, v29

    if-ge v0, v11, :cond_3

    .line 917
    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 921
    .local v59, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v59

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v69, v0

    if-nez v69, :cond_2

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v69, v0

    if-nez v69, :cond_2

    .line 922
    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 923
    add-int/lit8 v29, v29, -0x1

    .line 924
    add-int/lit8 v11, v11, -0x1

    .line 916
    :cond_0
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 915
    .end local v11    # "NS":I
    .end local v29    # "i":I
    .end local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "NS":I
    goto :goto_0

    .line 929
    .restart local v29    # "i":I
    .restart local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v69, v0

    and-int/lit8 v69, v69, 0x8

    if-eqz v69, :cond_0

    .line 931
    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 932
    add-int/lit8 v29, v29, -0x1

    .line 933
    add-int/lit8 v11, v11, -0x1

    .line 934
    goto :goto_2

    .line 941
    .end local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v52

    .line 942
    .local v52, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v52, :cond_4

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v9

    .line 943
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->clear()V

    .line 944
    const/16 v29, 0x0

    :goto_4
    move/from16 v0, v29

    if-ge v0, v9, :cond_5

    .line 945
    move-object/from16 v0, v52

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 946
    .local v42, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v70, v0

    new-instance v71, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v71

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v69 .. v71}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 942
    .end local v9    # "NP":I
    .end local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "NP":I
    goto :goto_3

    .line 951
    :cond_5
    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    if-ge v0, v11, :cond_7

    .line 952
    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 953
    .restart local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v59

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v70, v0

    const-wide/16 v72, 0x0

    cmp-long v69, v70, v72

    if-nez v69, :cond_6

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v69, v0

    if-lez v69, :cond_6

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 955
    .local v13, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 956
    const/16 v69, 0x1

    move/from16 v0, v69

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 957
    move-object/from16 v0, v59

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v69, v0

    if-eqz v69, :cond_6

    .line 958
    const/16 v69, 0x1

    move/from16 v0, v69

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 951
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 965
    .end local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v29, 0x0

    .end local v20    # "changed":Z
    :goto_6
    move/from16 v0, v29

    if-ge v0, v11, :cond_14

    .line 966
    move-object/from16 v0, v58

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 973
    .restart local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v59

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v70, v0

    const-wide/16 v72, 0x0

    cmp-long v69, v70, v72

    if-nez v69, :cond_8

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v69, v0

    if-lez v69, :cond_8

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 975
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_8

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v69, v0

    if-eqz v69, :cond_f

    .line 1001
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/HashMap;

    .line 1002
    .local v53, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v53, :cond_9

    .line 1003
    new-instance v53, Ljava/util/HashMap;

    .end local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v53 .. v53}, Ljava/util/HashMap;-><init>()V

    .line 1004
    .restart local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v70, v0

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1006
    :cond_9
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v69, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1007
    .local v49, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v49, :cond_a

    .line 1008
    const/16 v20, 0x1

    .line 1009
    .restart local v20    # "changed":Z
    new-instance v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v69, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v69

    move-object/from16 v3, v70

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1010
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v69, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .end local v20    # "changed":Z
    :cond_a
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_e

    .line 1014
    move-object/from16 v0, v59

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v70, v0

    const-wide/16 v72, 0x0

    cmp-long v69, v70, v72

    if-nez v69, :cond_13

    move-object/from16 v0, v59

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v45, v0

    .line 1015
    .local v45, "pid":I
    :goto_7
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    move/from16 v0, v45

    move/from16 v1, v69

    if-eq v0, v1, :cond_d

    .line 1016
    const/16 v20, 0x1

    .line 1017
    .restart local v20    # "changed":Z
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    move/from16 v0, v69

    move/from16 v1, v45

    if-eq v0, v1, :cond_d

    .line 1018
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    if-eqz v69, :cond_b

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->remove(I)V

    .line 1021
    :cond_b
    if-eqz v45, :cond_c

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v45

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1024
    :cond_c
    move/from16 v0, v45

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1027
    .end local v20    # "changed":Z
    :cond_d
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->clear()V

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1030
    .end local v45    # "pid":I
    :cond_e
    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v69

    or-int v20, v20, v69

    .line 965
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 981
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_f
    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v69, v0

    .line 982
    const/16 v70, 0x12c

    .line 981
    move/from16 v0, v69

    move/from16 v1, v70

    if-ge v0, v1, :cond_8

    .line 985
    const/16 v63, 0x0

    .line 986
    .local v63, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 987
    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_9
    if-eqz v13, :cond_11

    .line 988
    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v69, v0

    if-nez v69, :cond_10

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v69

    if-eqz v69, :cond_12

    .line 989
    :cond_10
    const/16 v63, 0x1

    .line 994
    :cond_11
    if-eqz v63, :cond_8

    goto :goto_8

    .line 992
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_9

    .line 1014
    .end local v13    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v63    # "skip":Z
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_13
    const/16 v45, 0x0

    .restart local v45    # "pid":I
    goto/16 :goto_7

    .line 1035
    .end local v45    # "pid":I
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v59    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_14
    const/16 v29, 0x0

    :goto_a
    move/from16 v0, v29

    if-ge v0, v9, :cond_19

    .line 1036
    move-object/from16 v0, v52

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1037
    .restart local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1038
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v49, :cond_16

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1043
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v49, :cond_15

    .line 1044
    const/16 v20, 0x1

    .line 1045
    .restart local v20    # "changed":Z
    new-instance v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v69, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v69

    move-object/from16 v3, v70

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1046
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v69, v0

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v70, v0

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1049
    .end local v20    # "changed":Z
    :cond_15
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->clear()V

    .line 1052
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v69

    if-eqz v69, :cond_18

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_17

    .line 1054
    const/16 v20, 0x1

    .line 1055
    .restart local v20    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    .end local v20    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1058
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1059
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1064
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1065
    move-object/from16 v0, v42

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1035
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_a

    .line 1061
    :cond_18
    const/16 v69, 0x0

    move/from16 v0, v69

    move-object/from16 v1, v49

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1070
    .end local v42    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1071
    .local v10, "NRP":I
    const/16 v29, 0x0

    :goto_c
    move/from16 v0, v29

    if-ge v0, v10, :cond_1e

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1073
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_1d

    .line 1074
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v22, v0

    .line 1075
    .local v22, "clientPid":I
    if-eqz v22, :cond_1c

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1077
    .local v21, "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v21, :cond_1a

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v21, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1080
    .restart local v21    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1a
    if-eqz v21, :cond_1b

    .line 1081
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v70, v0

    move-object/from16 v0, v69

    move/from16 v1, v70

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1089
    .end local v21    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1b
    :goto_d
    add-int/lit8 v29, v29, 0x1

    goto :goto_c

    .line 1087
    :cond_1c
    const/16 v69, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1091
    .end local v22    # "clientPid":I
    :cond_1d
    const/16 v20, 0x1

    .line 1092
    .restart local v20    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->remove(I)V

    .line 1093
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1098
    .end local v20    # "changed":Z
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1099
    .local v8, "NHP":I
    const/16 v29, 0x0

    :goto_e
    move/from16 v0, v29

    if-ge v0, v8, :cond_21

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1101
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v69, v0

    if-eqz v69, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v69

    if-nez v69, :cond_20

    .line 1102
    :cond_1f
    const/16 v20, 0x1

    .line 1103
    .restart local v20    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1104
    add-int/lit8 v29, v29, -0x1

    .line 1105
    add-int/lit8 v8, v8, -0x1

    .line 1099
    .end local v20    # "changed":Z
    :cond_20
    add-int/lit8 v29, v29, 0x1

    goto :goto_e

    .line 1112
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1113
    .local v6, "NAP":I
    const/16 v29, 0x0

    :goto_f
    move/from16 v0, v29

    if-ge v0, v6, :cond_23

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1115
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_22

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v69

    or-int v20, v20, v69

    .line 1113
    :cond_22
    add-int/lit8 v29, v29, 0x1

    goto :goto_f

    .line 1121
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_23
    const/16 v66, 0x0

    .line 1122
    .local v66, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .end local v66    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v69

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_2b

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/HashMap;

    .line 1124
    .restart local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 1125
    .local v47, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_24
    :goto_11
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_2a

    .line 1126
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1127
    .local v43, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_27

    .line 1128
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1129
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    if-nez v69, :cond_25

    .line 1132
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->clear()V

    .line 1148
    :cond_25
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .line 1149
    .local v62, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_26
    :goto_12
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_24

    .line 1150
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1151
    .local v60, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_26

    .line 1152
    const/16 v20, 0x1

    .line 1153
    .restart local v20    # "changed":Z
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1135
    .end local v20    # "changed":Z
    .end local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v62    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_27
    const/16 v20, 0x1

    .line 1136
    .restart local v20    # "changed":Z
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->remove()V

    .line 1137
    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->size()I

    move-result v69

    if-nez v69, :cond_29

    .line 1138
    if-nez v66, :cond_28

    .line 1139
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    move-object/from16 v0, v66

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_29
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    if-eqz v69, :cond_24

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1122
    .end local v20    # "changed":Z
    .end local v43    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2a
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_10

    .line 1159
    .end local v47    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v53    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2b
    if-eqz v66, :cond_2c

    .line 1160
    const/16 v29, 0x0

    :goto_13
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v69

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_2c

    .line 1161
    move-object/from16 v0, v66

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/lang/Integer;

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Integer;->intValue()I

    move-result v65

    .line 1162
    .local v65, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1160
    add-int/lit8 v29, v29, 0x1

    goto :goto_13

    .line 1166
    .end local v65    # "uid":I
    :cond_2c
    if-eqz v20, :cond_42

    .line 1168
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v64, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v29, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v69

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_31

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/util/HashMap;

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, "pi$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_30

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1171
    .restart local v43    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v69, 0x0

    move/from16 v0, v69

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1172
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1173
    const-wide v70, 0x7fffffffffffffffL

    move-wide/from16 v0, v70

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1174
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .local v61, "si$iterator":Ljava/util/Iterator;
    :cond_2d
    :goto_16
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_2f

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1175
    .restart local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v69, v0

    if-eqz v69, :cond_2e

    .line 1176
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v69, v0

    and-int/lit8 v69, v69, 0x1

    if-eqz v69, :cond_2e

    .line 1178
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1180
    :cond_2e
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v69, v0

    if-eqz v69, :cond_2d

    .line 1181
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v69, v0

    if-eqz v69, :cond_2d

    .line 1182
    const/16 v69, 0x0

    move/from16 v0, v69

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1183
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v70, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v72, v0

    cmp-long v69, v70, v72

    if-lez v69, :cond_2d

    .line 1184
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v70, v0

    move-wide/from16 v0, v70

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1188
    .end local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_2f
    move-object/from16 v0, v64

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1169
    .end local v43    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v61    # "si$iterator":Ljava/util/Iterator;
    :cond_30
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_14

    .line 1192
    .end local v44    # "pi$iterator":Ljava/util/Iterator;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v69, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1194
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v35, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v36, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->clear()V

    .line 1197
    const/16 v29, 0x0

    :goto_17
    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->size()I

    move-result v69

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_3b

    .line 1198
    move-object/from16 v0, v64

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1199
    .restart local v43    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v69, 0x0

    move/from16 v0, v69

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 1203
    .local v25, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1205
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    if-lez v69, :cond_32

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_32
    const/16 v30, 0x0

    .line 1212
    .local v30, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v28, 0x0

    .line 1213
    .local v28, "haveAllMerged":Z
    const/16 v32, 0x0

    .line 1214
    .local v32, "needDivider":Z
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v61    # "si$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_35

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1215
    .restart local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v32

    move-object/from16 v1, v60

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1216
    const/16 v32, 0x1

    .line 1217
    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    if-eqz v69, :cond_34

    .line 1219
    if-eqz v30, :cond_33

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v69

    if-eq v0, v1, :cond_33

    .line 1220
    const/16 v28, 0x0

    .line 1222
    :cond_33
    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v30, v0

    .local v30, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    goto :goto_18

    .line 1224
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_34
    const/16 v28, 0x0

    goto :goto_18

    .line 1228
    .end local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_35
    if-eqz v28, :cond_36

    if-nez v30, :cond_37

    .line 1231
    :cond_36
    new-instance v30, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1232
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :goto_19
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_39

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1233
    .restart local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1229
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v60    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_37
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Ljava/util/HashMap;->size()I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_36

    .line 1243
    :cond_38
    const/16 v69, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1244
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_3a

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v69

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1197
    :goto_1a
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_17

    .line 1236
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_39
    move-object/from16 v0, v43

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1237
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->clear()V

    .line 1238
    move/from16 v31, v25

    .local v31, "mpi":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    add-int/lit8 v69, v69, -0x1

    move/from16 v0, v31

    move/from16 v1, v69

    if-ge v0, v1, :cond_38

    .line 1239
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v70

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v31, v31, 0x1

    goto :goto_1b

    .line 1247
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31    # "mpi":I
    :cond_3a
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1253
    .end local v25    # "firstProc":I
    .end local v28    # "haveAllMerged":Z
    .end local v32    # "needDivider":Z
    .end local v43    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v61    # "si$iterator":Ljava/util/Iterator;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1254
    const/16 v29, 0x0

    :goto_1c
    move/from16 v0, v29

    if-ge v0, v8, :cond_3f

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1256
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v69, v0

    if-nez v69, :cond_3d

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/HashMap;->size()I

    move-result v69

    if-gtz v69, :cond_3d

    .line 1257
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    if-nez v69, :cond_3c

    .line 1258
    new-instance v69, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v70, v0

    invoke-direct/range {v69 .. v70}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1259
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1261
    :cond_3c
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1262
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_3e

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    .line 1264
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v70, v0

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v69

    move-object/from16 v4, v70

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1268
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_3d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1c

    .line 1266
    :cond_3e
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v70

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1274
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1275
    .local v12, "NU":I
    const/16 v29, 0x0

    :goto_1e
    move/from16 v0, v29

    if-ge v0, v12, :cond_41

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1277
    .local v67, "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v67

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_40

    .line 1278
    const/16 v69, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p1

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1275
    :cond_40
    add-int/lit8 v29, v29, 0x1

    goto :goto_1e

    .line 1282
    .end local v67    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v70, v0

    monitor-enter v70

    .line 1283
    :try_start_0
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1284
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v70

    .line 1290
    .end local v12    # "NU":I
    .end local v35    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v36    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v64    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->clear()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1292
    const/16 v38, 0x0

    .line 1293
    .local v38, "numBackgroundProcesses":I
    const/16 v39, 0x0

    .line 1294
    .local v39, "numForegroundProcesses":I
    const/16 v41, 0x0

    .line 1295
    .local v41, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1296
    const/16 v29, 0x0

    :goto_1f
    move/from16 v0, v29

    if-ge v0, v10, :cond_46

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1298
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_45

    .line 1301
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v69, v0

    .line 1302
    const/16 v70, 0x190

    .line 1301
    move/from16 v0, v69

    move/from16 v1, v70

    if-lt v0, v1, :cond_43

    .line 1303
    add-int/lit8 v38, v38, 0x1

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    :goto_20
    add-int/lit8 v29, v29, 0x1

    goto :goto_1f

    .line 1282
    .end local v38    # "numBackgroundProcesses":I
    .end local v39    # "numForegroundProcesses":I
    .end local v41    # "numServiceProcesses":I
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v35    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v36    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v64    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v69

    monitor-exit v70

    throw v69

    .line 1305
    .end local v12    # "NU":I
    .end local v35    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v36    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v64    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v38    # "numBackgroundProcesses":I
    .restart local v39    # "numForegroundProcesses":I
    .restart local v41    # "numServiceProcesses":I
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_43
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v69, v0

    .line 1306
    const/16 v70, 0xc8

    .line 1305
    move/from16 v0, v69

    move/from16 v1, v70

    if-gt v0, v1, :cond_44

    .line 1307
    add-int/lit8 v39, v39, 0x1

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1310
    :cond_44
    const-string/jumbo v69, "RunningState"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v71, "Unknown non-service process: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    .line 1311
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v71, v0

    .line 1310
    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    .line 1311
    const-string/jumbo v71, " #"

    .line 1310
    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    .line 1311
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v71, v0

    .line 1310
    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1314
    :cond_45
    add-int/lit8 v41, v41, 0x1

    goto :goto_20

    .line 1318
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_46
    const-wide/16 v14, 0x0

    .line 1320
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v16, 0x0

    .line 1321
    .local v16, "backgroundProcessSwapMemory":J
    const-wide/16 v26, 0x0

    .line 1322
    .local v26, "foregroundProcessMemory":J
    const-wide/16 v56, 0x0

    .line 1323
    .local v56, "serviceProcessMemory":J
    const/16 v33, 0x0

    .line 1324
    .local v33, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v37, 0x0

    .line 1325
    .local v37, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v23, 0x0

    .line 1327
    .local v23, "diffUsers":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 1328
    .local v40, "numProc":I
    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v46, v0

    .line 1329
    .local v46, "pids":[I
    const/16 v29, 0x0

    :goto_21
    move/from16 v0, v29

    move/from16 v1, v40

    if-ge v0, v1, :cond_47

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v69, v0

    aput v69, v46, v29

    .line 1329
    add-int/lit8 v29, v29, 0x1

    goto :goto_21

    .line 1332
    :cond_47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v54

    .line 1336
    .local v54, "pss":[J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPswap([I)[J

    move-result-object v55

    .line 1338
    .local v55, "pswap":[J
    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v68

    .line 1341
    .local v68, "zramCompressRatio":F
    const/16 v18, 0x0

    .line 1342
    .local v18, "bgIndex":I
    const/16 v29, 0x0

    move-object/from16 v34, v33

    .end local v23    # "diffUsers":Z
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v34, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_2
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v69, v0

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_51

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1346
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v70, v54, v29

    move-wide/from16 v0, v70

    long-to-float v0, v0

    move/from16 v69, v0

    aget-wide v70, v55, v29

    move-wide/from16 v0, v70

    long-to-float v0, v0

    move/from16 v70, v0

    div-float v70, v70, v68

    add-float v69, v69, v70

    move/from16 v0, v69

    float-to-long v0, v0

    move-wide/from16 v50, v0

    .line 1347
    .local v50, "procSize":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v69, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move-wide/from16 v2, v50

    move/from16 v4, v69

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v69

    or-int v20, v20, v69

    .line 1351
    .local v20, "changed":Z
    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_48

    .line 1352
    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v70, v0

    add-long v56, v56, v70

    move-object/from16 v33, v34

    .line 1342
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v33, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v34, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1353
    :cond_48
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v69, v0

    .line 1354
    const/16 v70, 0x190

    .line 1353
    move/from16 v0, v69

    move/from16 v1, v70

    if-lt v0, v1, :cond_50

    .line 1355
    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v70, v0

    add-long v14, v14, v70

    .line 1358
    aget-wide v70, v55, v29

    const-wide/16 v72, 0x400

    mul-long v70, v70, v72

    add-long v16, v16, v70

    .line 1362
    if-eqz v34, :cond_4a

    .line 1363
    new-instance v30, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1364
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1365
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_49

    const/16 v69, 0x1

    :goto_24
    or-int v23, v23, v69

    .line 1366
    .local v23, "diffUsers":Z
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v33, v34

    .line 1384
    .end local v23    # "diffUsers":Z
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v69, 0x1

    :try_start_3
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1385
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1386
    add-int/lit8 v18, v18, 0x1

    goto :goto_23

    .line 1365
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_49
    const/16 v69, 0x0

    goto :goto_24

    .line 1368
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    move/from16 v0, v18

    move/from16 v1, v69

    if-ge v0, v1, :cond_4b

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v69

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_4f

    .line 1370
    :cond_4b
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1371
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v19, 0x0

    .local v19, "bgi":I
    :goto_26
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_4d

    .line 1372
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1373
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_4c

    const/16 v69, 0x1

    :goto_27
    or-int v23, v23, v69

    .line 1374
    .restart local v23    # "diffUsers":Z
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v19, v19, 0x1

    goto :goto_26

    .line 1373
    .end local v23    # "diffUsers":Z
    :cond_4c
    const/16 v69, 0x0

    goto :goto_27

    .line 1376
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4d
    new-instance v30, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1377
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v69, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1378
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_4e

    const/16 v69, 0x1

    :goto_28
    or-int v23, v23, v69

    .line 1379
    .restart local v23    # "diffUsers":Z
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_25

    .line 1392
    .end local v18    # "bgIndex":I
    .end local v19    # "bgi":I
    .end local v20    # "changed":Z
    .end local v23    # "diffUsers":Z
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v40    # "numProc":I
    .end local v46    # "pids":[I
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v50    # "procSize":J
    .end local v54    # "pss":[J
    .end local v55    # "pswap":[J
    .end local v68    # "zramCompressRatio":F
    :catch_0
    move-exception v24

    .line 1395
    :goto_29
    if-nez v33, :cond_53

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    move/from16 v0, v69

    move/from16 v1, v38

    if-le v0, v1, :cond_53

    .line 1398
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1399
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v19, 0x0

    .restart local v19    # "bgi":I
    :goto_2a
    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_53

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1401
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_52

    const/16 v69, 0x1

    :goto_2b
    or-int v23, v23, v69

    .line 1402
    .restart local v23    # "diffUsers":Z
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    add-int/lit8 v19, v19, 0x1

    goto :goto_2a

    .line 1378
    .end local v23    # "diffUsers":Z
    .restart local v18    # "bgIndex":I
    .restart local v20    # "changed":Z
    .restart local v40    # "numProc":I
    .restart local v46    # "pids":[I
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50    # "procSize":J
    .restart local v54    # "pss":[J
    .restart local v55    # "pswap":[J
    .restart local v68    # "zramCompressRatio":F
    :cond_4e
    const/16 v69, 0x0

    goto :goto_28

    .line 1381
    .end local v19    # "bgi":I
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v33, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1387
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_50
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v69, v0

    .line 1388
    const/16 v70, 0xc8

    .line 1387
    move/from16 v0, v69

    move/from16 v1, v70

    if-gt v0, v1, :cond_5c

    .line 1389
    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v70, v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    add-long v26, v26, v70

    move-object/from16 v33, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v20    # "changed":Z
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v50    # "procSize":J
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_51
    move-object/from16 v33, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1401
    .end local v18    # "bgIndex":I
    .end local v40    # "numProc":I
    .end local v46    # "pids":[I
    .end local v54    # "pss":[J
    .end local v55    # "pswap":[J
    .end local v68    # "zramCompressRatio":F
    .restart local v19    # "bgi":I
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_52
    const/16 v69, 0x0

    goto :goto_2b

    .line 1407
    .end local v19    # "bgi":I
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_53
    if-eqz v33, :cond_54

    .line 1410
    if-nez v23, :cond_55

    .line 1412
    move-object/from16 v37, v33

    .line 1440
    .end local v37    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_54
    const/16 v29, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/util/ArrayList;->size()I

    move-result v69

    move/from16 v0, v29

    move/from16 v1, v69

    if-ge v0, v1, :cond_59

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1440
    add-int/lit8 v29, v29, 0x1

    goto :goto_2c

    .line 1416
    .restart local v37    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_55
    new-instance v37, Ljava/util/ArrayList;

    .end local v37    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v37, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1418
    .local v7, "NB":I
    const/16 v29, 0x0

    :goto_2d
    move/from16 v0, v29

    if-ge v0, v7, :cond_57

    .line 1419
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1420
    .restart local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_56

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v69

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1418
    :goto_2e
    add-int/lit8 v29, v29, 0x1

    goto :goto_2d

    .line 1424
    :cond_56
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1429
    .end local v30    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1430
    .restart local v12    # "NU":I
    const/16 v29, 0x0

    :goto_2f
    move/from16 v0, v29

    if-ge v0, v12, :cond_54

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1432
    .restart local v67    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v67

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v69, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v70, v0

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_58

    .line 1433
    const/16 v69, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, p1

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1434
    move-object/from16 v0, v67

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1430
    :cond_58
    add-int/lit8 v29, v29, 0x1

    goto :goto_2f

    .line 1444
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v37    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v67    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v70, v0

    monitor-enter v70

    .line 1445
    :try_start_7
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1446
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1447
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1448
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1449
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mBackgroundProcessSwapMemory:J

    .line 1450
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1451
    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1452
    if-eqz v33, :cond_5a

    .line 1453
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1454
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1455
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v69, v0

    if-eqz v69, :cond_5a

    .line 1456
    const/16 v20, 0x1

    .line 1459
    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v69, v0

    if-nez v69, :cond_5b

    .line 1460
    const/16 v69, 0x1

    move/from16 v0, v69

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5b
    monitor-exit v70

    .line 1465
    return v20

    .line 1444
    :catchall_1
    move-exception v69

    monitor-exit v70

    throw v69

    .line 1392
    .restart local v18    # "bgIndex":I
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v37, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v40    # "numProc":I
    .restart local v46    # "pids":[I
    .restart local v54    # "pss":[J
    .restart local v55    # "pswap":[J
    .restart local v68    # "zramCompressRatio":F
    :catch_1
    move-exception v24

    .local v24, "e":Landroid/os/RemoteException;
    move-object/from16 v33, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v24    # "e":Landroid/os/RemoteException;
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v20    # "changed":Z
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v49    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50    # "procSize":J
    :cond_5c
    move-object/from16 v33, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1481
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1475
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 828
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method pause()V
    .locals 3

    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 848
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 844
    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 801
    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 802
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 803
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 804
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v1

    .line 806
    .local v1, "usersChanged":Z
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 807
    .local v0, "configChanged":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 809
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 810
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 811
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 814
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 816
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 800
    return-void

    .line 801
    .end local v0    # "configChanged":Z
    .end local v1    # "usersChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1470
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1468
    return-void

    .line 1469
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 823
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 820
    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method waitForData()V
    .locals 6

    .prologue
    .line 834
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 837
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 833
    return-void

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
