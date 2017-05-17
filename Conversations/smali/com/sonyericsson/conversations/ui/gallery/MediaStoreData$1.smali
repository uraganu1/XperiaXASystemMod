.class final Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;
.super Ljava/lang/Object;
.source "MediaStoreData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    new-instance v0, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData$1;->newArray(I)[Lcom/sonyericsson/conversations/ui/gallery/MediaStoreData;

    move-result-object v0

    return-object v0
.end method
