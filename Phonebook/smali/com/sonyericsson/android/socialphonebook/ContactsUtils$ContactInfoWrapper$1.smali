.class final Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
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
        "Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 966
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V

    .line 967
    .local v0, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->readFromParcel(Landroid/os/Parcel;)V

    .line 968
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 973
    new-array v0, p1, [Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;->newArray(I)[Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    move-result-object v0

    return-object v0
.end method
