.class Lcom/sonyericsson/conversations/ConversationsApp$2;
.super Ljava/lang/Thread;
.source "ConversationsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ConversationsApp;->enableComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ConversationsApp;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ConversationsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ConversationsApp;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sonyericsson/conversations/ConversationsApp$2;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    .line 163
    .local v0, "isEnabledMMS":Z
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/conversations/ConversationsApp$2;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 165
    const-string/jumbo v2, "com.sonyericsson.conversations.ui.ShareMediaActivity"

    .line 164
    invoke-static {v1, v2, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/conversations/ConversationsApp$2;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 167
    const-string/jumbo v2, "com.sonyericsson.conversations.ShareText"

    .line 166
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 160
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ConversationsApp$2;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 170
    const-string/jumbo v2, "com.sonyericsson.conversations.ui.ShareMediaActivity"

    .line 169
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/conversations/ConversationsApp$2;->this$0:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 172
    const-string/jumbo v2, "com.sonyericsson.conversations.ShareText"

    .line 171
    invoke-static {v1, v2, v4}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
