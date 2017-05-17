.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;
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

.field final synthetic val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p2, "val$doNotShowAgainCheckBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;->val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;->val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    .line 1281
    const/4 v1, 0x0

    .line 1280
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->persistShowChangeDefaultSmsAppBannerChoice(Z)V

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get1(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    .line 1283
    const v1, 0x7f0b0217

    .line 1284
    const/4 v2, 0x1

    .line 1282
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$17;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mDefaultSmsAppBannerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1278
    return-void
.end method
