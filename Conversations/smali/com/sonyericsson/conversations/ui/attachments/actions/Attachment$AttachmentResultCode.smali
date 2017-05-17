.class public final enum Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;
.super Ljava/lang/Enum;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

.field public static final enum ERROR:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

.field public static final enum OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->ERROR:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->ERROR:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->$VALUES:[Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    return-object v0
.end method
