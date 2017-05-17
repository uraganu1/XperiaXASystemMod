.class public Lcom/sonyericsson/conversations/upgrade/UpgradeManager;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAppContext:Lcom/sonyericsson/conversations/ConversationsApp;

.field private final mOnUpgradeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;)Lcom/sonyericsson/conversations/ConversationsApp;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mAppContext:Lcom/sonyericsson/conversations/ConversationsApp;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mOnUpgradeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->markVersionAsUpgraded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->DEBUG:Z

    .line 19
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ConversationsApp;)V
    .locals 1
    .param p1, "appContext"    # Lcom/sonyericsson/conversations/ConversationsApp;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mAppContext:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mAppContext:Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mOnUpgradeListeners:Ljava/util/List;

    .line 46
    return-void
.end method

.method private getLatestUpgradedVersionCode()I
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "key-latest-upgraded-version-code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private markVersionAsUpgraded(I)V
    .locals 2
    .param p1, "versionCode"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key-latest-upgraded-version-code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method


# virtual methods
.method public addOnUpgradeListener(Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;)V
    .locals 1
    .param p1, "onUpgradeListener"    # Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mOnUpgradeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public upgradeAppDataIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->getLatestUpgradedVersionCode()I

    move-result v1

    .line 54
    .local v1, "latestUpgradedVersionCode":I
    if-le v4, v1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "isUpgradeNeeded":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    new-instance v2, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v4, v3}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;-><init>(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;IILcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 52
    :goto_1
    return-void

    .line 54
    .end local v0    # "isUpgradeNeeded":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isUpgradeNeeded":Z
    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->mOnUpgradeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1
.end method
