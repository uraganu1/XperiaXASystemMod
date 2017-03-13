.class public final Lcom/android/systemui/statusbar/policy/UserInfoController;
.super Ljava/lang/Object;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;,
        Lcom/android/systemui/statusbar/policy/UserInfoController$1;,
        Lcom/android/systemui/statusbar/policy/UserInfoController$2;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUseDefaultAvatar:Z

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/UserInfoController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUseDefaultAvatar:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/UserInfoController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUseDefaultAvatar:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method private notifyChanged()V
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 199
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;->onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 197
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
    :cond_0
    return-void
.end method

.method private queryForUserInformation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 123
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android"

    .line 124
    new-instance v12, Landroid/os/UserHandle;

    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 123
    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 132
    .local v7, "currentUserContext":Landroid/content/Context;
    iget v3, v11, Landroid/content/pm/UserInfo;->id:I

    .line 133
    .local v3, "userId":I
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    .line 134
    .local v5, "isGuest":Z
    iget-object v2, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 136
    .local v2, "userName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 138
    .local v10, "res":Landroid/content/res/Resources;
    const v0, 0x7f0a009d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    const v1, 0x7f0a009c

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 141
    .local v4, "avatarSize":I
    move-object v6, v7

    .line 142
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;IIZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v1, v14, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void

    .line 128
    .end local v2    # "userName":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "avatarSize":I
    .end local v5    # "isGuest":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "currentUserContext":Landroid/content/Context;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v9

    .line 129
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "UserInfoController"

    const-string/jumbo v1, "Couldn\'t get user info"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 125
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 126
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "UserInfoController"

    const-string/jumbo v1, "Couldn\'t create user context"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public reloadUserInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 113
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->queryForUserInformation()V

    .line 110
    return-void
.end method
