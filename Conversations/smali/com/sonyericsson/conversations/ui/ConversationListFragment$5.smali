.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 3
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApisConnectionsStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 320
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap1()Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v0

    .line 321
    .local v0, "currentLoaderType":Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get5(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v1, "Loader type changed from "

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get5(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    .line 324
    const-string/jumbo v2, ". Reload conversations"

    .line 323
    invoke-virtual {v1, v2}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reloadData()V

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    :cond_3
    :goto_0
    return-void

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
