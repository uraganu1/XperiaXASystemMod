.class Lcom/android/settings/sim/SimDialogActivity$2;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p2, "val$sir"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$sir:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$sir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 139
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->-wrap0(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 140
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/android/settings/sim/SimDialogActivity;->-wrap2(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->-wrap3(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$2;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 136
    return-void
.end method
