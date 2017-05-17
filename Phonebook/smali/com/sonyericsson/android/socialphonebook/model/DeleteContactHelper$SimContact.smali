.class Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;
.super Ljava/lang/Object;
.source "DeleteContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContact"
.end annotation


# instance fields
.field private mSimUri:Landroid/net/Uri;

.field private mSourceId:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSimUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSourceId:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSimUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSourceId:I

    return p1
.end method

.method public constructor <init>(ILandroid/net/Uri;)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "simUri"    # Landroid/net/Uri;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSourceId:I

    .line 408
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper$SimContact;->mSimUri:Landroid/net/Uri;

    .line 406
    return-void
.end method
