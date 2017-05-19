.class final Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;
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
        "Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 701
    new-instance v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;

    invoke-direct {v0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 705
    new-array v0, p1, [Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;->newArray(I)[Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;

    move-result-object v0

    return-object v0
.end method
