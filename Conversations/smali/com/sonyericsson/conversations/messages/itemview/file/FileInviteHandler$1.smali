.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->startInviteHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 64
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 63
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)Landroid/content/Context;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 70
    new-instance v2, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1$1;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$1;)V

    .line 68
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method
