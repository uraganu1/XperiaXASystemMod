.class final Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;
.super Ljava/lang/Object;
.source "CollapsibleNumberData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;
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
        "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 75
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;-><init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData$1;->newArray(I)[Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    move-result-object v0

    return-object v0
.end method
