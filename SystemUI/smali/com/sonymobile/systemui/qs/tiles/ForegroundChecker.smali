.class public Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;
.super Ljava/lang/Object;
.source "ForegroundChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mActivity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHost:Lcom/android/systemui/qs/QSTile$Host;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Landroid/content/Context;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    .line 34
    return-void
.end method

.method private getForegroundActivityName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 55
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 57
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 61
    :cond_0
    return-object v5
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "curActivity":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "statusbar"

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 47
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_0
.end method
