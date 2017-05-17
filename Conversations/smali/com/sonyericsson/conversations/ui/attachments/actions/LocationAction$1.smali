.class Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$1;
.super Ljava/lang/Object;
.source "LocationAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->handlePermissionsAndStartLocationActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;->-wrap1(Lcom/sonyericsson/conversations/ui/attachments/actions/LocationAction;)V

    .line 102
    :cond_0
    return-void
.end method
