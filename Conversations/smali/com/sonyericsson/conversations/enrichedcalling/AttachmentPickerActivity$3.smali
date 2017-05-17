.class Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;
.super Ljava/lang/Object;
.source "AttachmentPickerActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startAddMedia(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$requestCode"    # I

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResponse(Z)V
    .locals 3
    .param p1, "isGranted"    # Z

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$3;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    :cond_0
    return-void
.end method
