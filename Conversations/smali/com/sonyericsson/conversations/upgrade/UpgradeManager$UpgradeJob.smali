.class Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/upgrade/UpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpgradeJob"
.end annotation


# instance fields
.field private final mNewVersion:I

.field private final mOldVersion:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/upgrade/UpgradeManager;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p2, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->mOldVersion:I

    .line 81
    iput p3, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->mNewVersion:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;IILcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/upgrade/UpgradeManager;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;-><init>(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string/jumbo v3, "Start task to upgrade app data"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->-get2(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

    .line 91
    .local v1, "listener":Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->-get1(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;)Lcom/sonyericsson/conversations/ConversationsApp;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->mOldVersion:I

    iget v5, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->mNewVersion:I

    invoke-interface {v1, v3, v4, v5}, Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;->onUpgrade(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Upgrade failed for particular listener"

    invoke-static {v3, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    iget v4, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->mNewVersion:I

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->-wrap0(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;I)V

    .line 97
    iget-object v3, p0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager$UpgradeJob;->this$0:Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->-get2(Lcom/sonyericsson/conversations/upgrade/UpgradeManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 85
    return-void
.end method
