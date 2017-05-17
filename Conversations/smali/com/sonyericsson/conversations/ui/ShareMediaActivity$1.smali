.class Lcom/sonyericsson/conversations/ui/ShareMediaActivity$1;
.super Ljava/lang/Object;
.source "ShareMediaActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ShareMediaActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ShareMediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ShareMediaActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ShareMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/ShareMediaActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->finish()V

    .line 75
    :cond_0
    return-void
.end method
