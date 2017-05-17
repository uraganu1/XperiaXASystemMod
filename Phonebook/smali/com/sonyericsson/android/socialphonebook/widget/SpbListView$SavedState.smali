.class final Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SpbListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/widget/SpbListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFirstPosition:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->mFirstPosition:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState$1;-><init>()V

    .line 278
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->mFirstPosition:I

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)V
    .locals 0
    .param p1, "aIn"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "aSuperState"    # Landroid/os/Parcelable;
    .param p2, "aFirstPosition"    # I

    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 247
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->mFirstPosition:I

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;)V
    .locals 0
    .param p1, "aSuperState"    # Landroid/os/Parcelable;
    .param p2, "aFirstPosition"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SpbListView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, " mSectionIndex="

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->mFirstPosition:I

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "}"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "aOut"    # Landroid/os/Parcel;
    .param p2, "aFlags"    # I

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/SpbListView$SavedState;->mFirstPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return-void
.end method
