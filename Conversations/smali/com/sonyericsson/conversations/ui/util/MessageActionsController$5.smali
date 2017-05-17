.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getSimCardFullDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$simCardSlotIndex:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "val$simCardSlotIndex"    # I

    .prologue
    .line 934
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$simCardSlotIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 939
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 940
    .local v0, "okClickIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    .line 942
    iget v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$simCardSlotIndex:I

    .line 941
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->addSimCardSlotIndexToIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 943
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 938
    return-void
.end method
