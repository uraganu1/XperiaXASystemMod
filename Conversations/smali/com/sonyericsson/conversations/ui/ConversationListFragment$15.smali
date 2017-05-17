.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setupXperiaTransferFooter()V
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
    .line 1192
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1198
    const-string/jumbo v2, "com.sonymobile.xperiatransfermobile"

    .line 1197
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1201
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1203
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sonymobile.xperiatransfermobile"

    .line 1204
    const-string/jumbo v3, "com.sonymobile.xperiatransfermobile.ui.CompatibilityCheckerActivity"

    .line 1203
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1205
    const-string/jumbo v1, "com.sonymobile.xperiatransfermobile.intent.action.LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$15;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1194
    return-void

    .line 1208
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http://www.sonymobile.com/xperiatransfer"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
