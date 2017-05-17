.class public Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPrimaryColor:I

.field public final mSecondaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "primaryColor"    # I
    .param p2, "secondaryColor"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 41
    iput p2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    return v4

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    return v3

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 55
    return v3

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 58
    .local v0, "other":Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    iget v1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget v2, v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    if-eq v1, v2, :cond_3

    .line 59
    return v3

    .line 61
    :cond_3
    iget v1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iget v2, v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    if-eq v1, v2, :cond_4

    .line 62
    return v3

    .line 64
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 69
    const/16 v0, 0x1f

    .line 71
    .local v0, "prime":I
    iget v2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    add-int/lit8 v1, v2, 0x1f

    .line 72
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    add-int v1, v2, v3

    .line 73
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
