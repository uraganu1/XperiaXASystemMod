.class Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;
.super Landroid/database/ContentObserver;
.source "MessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JoynContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "Change in eventslog detected, updating message list"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader$JoynContentObserver;->this$1:Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel$MessageListFragmentLoader;->forceLoad()V

    .line 101
    return-void
.end method
