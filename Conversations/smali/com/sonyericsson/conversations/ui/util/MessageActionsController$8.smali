.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$8;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$8;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 1558
    if-eqz p1, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$8;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap4(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 1557
    :cond_0
    return-void
.end method
