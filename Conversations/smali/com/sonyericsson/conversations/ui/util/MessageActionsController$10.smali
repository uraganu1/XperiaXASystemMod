.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;
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

.field final synthetic val$saveTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/os/AsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 1588
    .local p2, "val$saveTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Exception;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;->val$saveTask:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 2
    .param p1, "isGranted"    # Z

    .prologue
    .line 1591
    if-eqz p1, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$10;->val$saveTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1590
    :cond_0
    return-void
.end method
