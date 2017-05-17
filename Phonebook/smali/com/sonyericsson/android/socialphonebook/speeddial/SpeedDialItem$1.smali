.class Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;
.super Ljava/lang/Object;
.source "SpeedDialItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;->this$0:Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 27
    new-array v0, p1, [Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;->newArray(I)[Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;

    move-result-object v0

    return-object v0
.end method
