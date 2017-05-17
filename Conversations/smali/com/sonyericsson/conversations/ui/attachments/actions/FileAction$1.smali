.class Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction$1;
.super Ljava/lang/Object;
.source "FileAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/FileAction;)V

    .line 82
    :cond_0
    return-void
.end method
