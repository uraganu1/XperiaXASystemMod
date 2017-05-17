.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showNewGroupChatTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field final synthetic val$anchor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p2, "val$anchor"    # Landroid/view/View;

    .prologue
    .line 1853
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissTooltip(Z)V
    .locals 1
    .param p1, "clickedAnchor"    # Z

    .prologue
    .line 1856
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->setNewGroupChatTooltipShown()V

    .line 1857
    if-eqz p1, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$19;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 1855
    :cond_0
    return-void
.end method
