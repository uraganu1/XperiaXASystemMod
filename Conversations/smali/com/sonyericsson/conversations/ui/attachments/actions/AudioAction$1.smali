.class Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction$1;
.super Ljava/lang/Object;
.source "AudioAction.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->handleButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePermissionsResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction$1;->this$0:Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;->-wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/AudioAction;)V

    .line 50
    :cond_0
    return-void
.end method
