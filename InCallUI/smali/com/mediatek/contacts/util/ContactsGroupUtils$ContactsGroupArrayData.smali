.class public Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSimIndex:I

.field private mSimIndexPhoneOrSim:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 651
    new-instance v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData$1;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData$1;-><init>()V

    .line 650
    sput-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 629
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I

    .line 662
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 646
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    return-void
.end method
