.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1$1;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1$1;->this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 1
    .param p1, "isGranted"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1$1;->this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 72
    :cond_0
    return-void
.end method
