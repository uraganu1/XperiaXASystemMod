.class Lcom/sonyericsson/conversations/model/ConversationListModel$2;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUpdateThrottle(J)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->forceLoad()V

    .line 568
    :cond_0
    return-void
.end method
