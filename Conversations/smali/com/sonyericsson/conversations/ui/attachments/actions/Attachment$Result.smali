.class public Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public code:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

.field public errorTextCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->code:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    .line 66
    return-void
.end method
