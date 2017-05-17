.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setupDefaultSmsAppBanner()V
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
    .line 1263
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1266
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    .line 1267
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1268
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$16;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1269
    const v2, 0xbada

    .line 1268
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1265
    return-void
.end method
