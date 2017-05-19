.class public Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap$1;-><init>()V

    .line 697
    sput-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const-class v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;->mMap:Ljava/util/HashMap;

    .line 713
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ParcelableHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 685
    return-void
.end method
