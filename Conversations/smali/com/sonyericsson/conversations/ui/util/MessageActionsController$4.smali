.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showSimCardFullDialog(Landroid/app/Activity;I)V
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
    .line 907
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->val$simCardSlotIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$4;->val$simCardSlotIndex:I

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 908
    return-void
.end method
