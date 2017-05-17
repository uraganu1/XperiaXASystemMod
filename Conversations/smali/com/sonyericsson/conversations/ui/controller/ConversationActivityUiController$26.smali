.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientAndSend(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$subscriptionId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p2, "val$subscriptionId"    # I

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;->val$subscriptionId:I

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap37(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 3119
    return-void
.end method
