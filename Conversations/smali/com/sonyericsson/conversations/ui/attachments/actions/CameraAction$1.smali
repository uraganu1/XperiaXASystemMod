.class Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction$1;
.super Ljava/lang/Object;
.source "CameraAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePermissionsResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/CameraAction;)V

    .line 54
    :cond_0
    return-void
.end method
