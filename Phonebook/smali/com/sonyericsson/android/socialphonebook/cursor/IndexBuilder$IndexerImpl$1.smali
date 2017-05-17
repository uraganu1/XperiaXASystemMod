.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
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
        "Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1410
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;)V

    .line 1412
    .local v0, "indexer":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set5(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;I)I

    .line 1417
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set7(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 1418
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set6(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 1419
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set10(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set8(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set9(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[I)[I

    .line 1423
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;->-set4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1426
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1431
    new-array v0, p1, [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1430
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$IndexerImpl$1;->newArray(I)[Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v0

    return-object v0
.end method
