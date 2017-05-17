.class final Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;
.super Ljava/lang/Object;
.source "AccountWithDataSetEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/model/AccountWithDataSetEx;
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
        "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 121
    new-instance v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {v0, p1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    new-array v0, p1, [Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;->newArray(I)[Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    move-result-object v0

    return-object v0
.end method
