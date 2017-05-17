.class Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;
.super Ljava/lang/Object;
.source "AttachmentPickerActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->startCapture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;
    .param p2, "val$type"    # I

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    iput p2, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePermissionsResponse(Z)V
    .locals 2
    .param p1, "isGranted"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;->this$0:Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;

    iget v1, p0, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity$4;->val$type:I

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;->-wrap1(Lcom/sonyericsson/conversations/enrichedcalling/AttachmentPickerActivity;I)V

    .line 306
    :cond_0
    return-void
.end method
