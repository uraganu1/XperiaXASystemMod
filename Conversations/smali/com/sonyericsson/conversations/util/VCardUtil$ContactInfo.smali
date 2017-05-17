.class Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mPhoto:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;

    .line 466
    iput-object v0, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    .line 469
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;

    .line 470
    iput-object p2, p0, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    .line 468
    return-void
.end method
